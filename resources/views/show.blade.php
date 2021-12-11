<x-app-layout>
    <div class="container single_product_container">
        <div class="row">
            <div class="col">
                <!-- Breadcrumbs -->

                <div class="breadcrumbs d-flex flex-row align-items-center">
                    <ul>
                        <li><a href="{{ route('product.index') }}">Home</a></li>
                        <li class="active">
                            <a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i>{{ $product->name
                                }}</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-7">
                <div class="single_product_pics">
                    <div class="row">
                        <div class="col-lg-3 thumbnails_col order-lg-1 order-2">
                            <div class="single_product_thumbnails">
                                <ul>
                                    <li>
                                        <img src="{{ Voyager::image($product->img1) }}" alt=""
                                            data-image="{{ Voyager::image($product->img1) }}" />
                                    </li>
                                    <li class="active">
                                        <img src="{{ Voyager::image($product->img2) }}" alt=""
                                            data-image="{{ Voyager::image($product->img2) }}" />
                                    </li>
                                    <li>
                                        <img src="{{ Voyager::image($product->img3) }}" alt=""
                                            data-image="{{ Voyager::image($product->img3) }}" />
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-9 image_col order-lg-2 order-1">
                            <div class="single_product_image">
                                <div class="single_product_image_background"
                                    style="background-image: url({{ Voyager::image($product->img1) }})"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="product_details">
                    <div class="product_details_title">
                        <h2>{{ $product->name }}</h2>
                        <p>
                            {{ $product->shot_dec }}
                        </p>
                    </div>
                    <div class=" free_delivery d-flex flex-row align-items-center justify-content-center ">
                        <span class="ti-truck"></span><span>free delivery</span>
                    </div>
                    <div class="original_price">${{ $product->current_price }}</div>
                    <div class="product_price">${{ $product->descount_price }}</div>

                    <div class=" quantity  d-flex flex-column flex-sm-row align-items-sm-center ">
                        <div class="red_button add_to_cart_button">
                            <a href="#">add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Tabs -->

    <div class="tabs_section_container">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="tabs_container">
                        <ul
                            class="tabs d-flex flex-sm-row flex-column align-items-left align-items-md-center justify-content-center ">
                            <li class="tab active" data-active-tab="tab_1">
                                <span>Description</span>
                            </li>
                            <li class="tab" data-active-tab="tab_3">
                                <span>Reviews (0)</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <!-- Tab Description -->

                    <div id="tab_1" class="tab_container active">
                        <div class="row">
                            <div class="col-lg-5 desc_col">
                                <div class="tab_title">
                                    <h4>Description</h4>
                                </div>
                                <div class="tab_text_block">
                                    {!! $product->long_dec !!}
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Tab Reviews -->

                    <div id="tab_3" class="tab_container">
                        <div class="row">
                            <!-- User Reviews -->

                            <div class="col-lg-6 reviews_col">
                                <div class="tab_title reviews_title">
                                    <h4>Reviews (0)</h4>
                                    <p>No Review avilable..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @push('extra-style')
    <link rel="stylesheet" type="text/css" href="styles/single_styles.css" />
    <link rel="stylesheet" type="text/css" href="styles/single_responsive.css" />
    @endpush
    @push('extra-script')
    <script src="js/single_custom.js"></script>
    @endpush
</x-app-layout>
