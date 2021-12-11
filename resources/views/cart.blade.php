<x-app-layout>
    <!-- Hamburger Menu -->
    <div class="container contact_container">
        <div class="row">
            <div class="col">
                <!-- Breadcrumbs -->

                <div class="breadcrumbs d-flex flex-row align-items-center">
                    <ul>
                        <li><a href="{{ route('product.index') }}">Home</a></li>
                        <li class="active">
                            <a href="javascript:void(0);"><i class="fa fa-angle-right" aria-hidden="true"></i>Cart</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Map Container -->

        <div class="row">
            <div class="col">
                <h2>Cart
                    @if (count($cart))
                    <a href="{{ route('cart.destroy',['forgetall'=>'true']) }}"
                        class="btn btn-danger btn-sm btn-inline float-right">Remove all Cart</a>
                    @endif
                </h2>
                <hr>
                @if (session()->has('success'))
                <div class="alert alert-success" role="alert">
                    {{ session()->get('success') }}
                </div>
                @endif
                <table class="table">
                    <thead>
                        <tr>
                            <td>Prodct Name</td>
                            <td>Prodct Quantity</td>
                            <td class="text-right">Prodct Price</td>
                            <td>

                            </td>
                        </tr>
                    </thead>
                    <tbody>
                        @php
                        $total=0;
                        @endphp
                        @foreach ($cart as $item)
                        <tr>
                            @php
                            $product=App\Models\Product::find($item)->first();
                            $total+=$product->descount_price??0;
                            @endphp
                            <td>{{ $product->name}}</td>
                            <td>1</td>
                            <td class="text-right">${{ $product->descount_price}}</td>
                            <td>
                                <a href="{{ route('cart.destroy',['cart'=>$product->id]) }}">remove</a>
                            </td>
                        </tr>
                        @endforeach

                        <tr>
                            <td colspan=""><strong>Total</strong></td>
                            <td colspan="2" class="text-right"><strong>${{ $total??0 }}</strong></td>
                        </tr>
                    </tbody>

                </table>
                @if (count($cart))
                <a href="{{ route('cart.order') }}" class="btn btn-success ">Order Now</a>
                @endif
            </div>
        </div>




    </div>

    @push('extra-style')
    <link rel="stylesheet" type="text/css" href="styles/contact_styles.css" />
    <link rel="stylesheet" type="text/css" href="styles/contact_responsive.css" />
    @endpush
    @push('extra-script')
    <script src="js/contact_custom.js"></script>
    @endpush
</x-app-layout>
