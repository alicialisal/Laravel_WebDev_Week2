<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Books;
use App\Models\Newspaper;
use App\Models\Cd;
use App\Models\Journal;
use App\Models\FinalYearProject;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;

class CatalogueController extends Controller
{
    // Display a paginated list of all catalog items (books, newspapers, CDs, journals, FYP)

public function index(Request $request)
{
    $category = $request->get('category', null); // Default to null if no category is selected
    $sortField = $request->get('sort_field', 'title'); // Default sort by title
    $sortOrder = $request->get('sort_order', 'asc'); // Default order is ascending

    // Fetch the catalog items
    $books = Books::query();
    $newspapers = Newspaper::query();
    $cds = Cd::query();
    $journals = Journal::query();
    $fyp = FinalYearProject::query();

    if ($category) {
        $books->where('catalogue_type', $category);
        $newspapers->where('catalogue_type', $category);
        $cds->where('catalogue_type', $category);
        $journals->where('catalogue_type', $category);
        $fyp->where('catalogue_type', $category);
    }

    // Get paginated results
    $books = $books->paginate(10);
    $newspapers = $newspapers->paginate(10);
    $cds = $cds->paginate(10);
    $journals = $journals->paginate(10);
    $fyp = $fyp->paginate(10);

    // Merge paginated items into a single collection
    $allItems = collect($books->items())
        ->merge($newspapers->items())
        ->merge($cds->items())
        ->merge($journals->items())
        ->merge($fyp->items());

    if ($sortOrder === 'asc') {
        $allItems = $allItems->sortBy($sortField);
    } else {
        $allItems = $allItems->sortByDesc($sortField);
    }

    // Manually paginate the merged collection
    $currentPage = LengthAwarePaginator::resolveCurrentPage();
    $perPage = 20;
    $itemsForCurrentPage = $allItems->slice(($currentPage - 1) * $perPage, $perPage)->values();

    $paginatedItems = new LengthAwarePaginator(
        $itemsForCurrentPage,
        $allItems->count(),
        $perPage,
        $currentPage,
        ['path' => $request->url(), 'query' => $request->query()]
    );

    return view('catalogues.index', compact('paginatedItems', 'category', 'sortField', 'sortOrder'));
}

}

