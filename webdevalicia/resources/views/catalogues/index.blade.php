<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Catalog</title>
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

    <h1 style ='margin:15px;'>Library Catalog</h1>
    <h5 style ='margin-left:15px;color:steelblue'>Alicia punya (0806022310002)</h5>

    <!-- Category Filter -->
    <form method="GET" action="{{ route('catalogues.index') }}">
        <label for="category" style ='margin:15px;'>Select Category:</label>
        <select name="category" id="category" onchange="this.form.submit()">
            <option value="">All Categories</option>
            <option value="book" {{ request('category') == 'book' ? 'selected' : '' }}>Books</option>
            <option value="newspaper" {{ request('category') == 'newspaper' ? 'selected' : '' }}>Newspapers</option>
            <option value="cd" {{ request('category') == 'cd' ? 'selected' : '' }}>CDs</option>
            <option value="journal" {{ request('category') == 'journal' ? 'selected' : '' }}>Journals</option>
            <option value="final year project" {{ request('category') == 'final year project' ? 'selected' : '' }}>Final Year Projects</option>
        </select>
    </form>

    <div class="container mt-4">
        <!-- Display the table with catalog items -->
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr>
                    <th><a href="{{ route('catalogues.index', ['sort_field' => 'title', 'sort_order' => $sortField == 'title' && $sortOrder == 'asc' ? 'desc' : 'asc']) }}">Title</a></th>
                    <th><a href="{{ route('catalogues.index', ['sort_field' => 'author', 'sort_order' => $sortField == 'author' && $sortOrder == 'asc' ? 'desc' : 'asc']) }}">Author</a></th>
                    <th><a href="{{ route('catalogues.index', ['sort_field' => 'publisher', 'sort_order' => $sortField == 'publisher' && $sortOrder == 'asc' ? 'desc' : 'asc']) }}">Publisher</a></th>
                    <th>Published Date</th>
                    <th>Category</th>
                    <th><a href="{{ route('catalogues.index', ['sort_field' => 'price', 'sort_order' => $sortField == 'price' && $sortOrder == 'asc' ? 'desc' : 'asc']) }}">Price (Rp.)</a></th>
                    <th><a href="{{ route('catalogues.index', ['sort_field' => 'stock', 'sort_order' => $sortField == 'stock' && $sortOrder == 'asc' ? 'desc' : 'asc']) }}">Stock</a></th>
                    <th>Link</th>
                    
                </tr>
            </thead>
            <tbody>
                @foreach($paginatedItems as $item)
                    <tr>
                        <td>{{ $item->title }}</td>
                        <td>{{ $item->author }}</td>
                        <td>{{ $item->publisher }}</td>
                        <td>{{ \Carbon\Carbon::parse($item->datePublished)->format('d M Y') }}</td> <!-- Format the date -->
                        <td>{{ $item->catalogue_type }}</td>
                        <td>{{ number_format($item->price ?? 0, 0, ',', '.') }}</td>
                        <td>{{ $item->stock }}</td>
                        <td><a href="{{ $item->onlineLink }}" target="_blank" class="btn btn-info">View Link</a></td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    
        <!-- Pagination links -->
        {{-- <div class="pagination justify-content-center">
            {{ $paginatedItems->links() }}
        </div> --}}
        {{ $paginatedItems->appends(['sort_field' => $sortField, 'sort_order' => $sortOrder])->links() }}
    </div>
    

</body>
</html>
