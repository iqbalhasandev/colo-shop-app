<x-app-layout>
    <!-- Slider -->

    <div class="main_slider" style="background-image:url({{ Voyager::image(setting('site.banner_image')) }})">
        <div class="container fill_height">
            <div class="row align-items-center fill_height">
                <div class="col">
                    <div class="main_slider_content">
                        <h6>{{ setting('site.banner_subtitle') }}</h6>
                        <h1>{{ setting('site.banner_title') }}</h1>
                        <div class="red_button shop_now_button"><a href="#shopping">shop now</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- New Arrivals -->
    <div class="new_arrivals" id="shopping" style="margin-top:40px ">>
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <div class="section_title new_arrivals_title">
                        <h2>New Arrivals</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="product-grid"
                        data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'>

                        <!-- Product 1 -->
                        @foreach ($products as $product)
                        <div class="product-item men">
                            <div class="product discount product_filter">
                                <div class="product_image">
                                    <img src="{{ asset('storage/'.$product->img1) }}" alt="">
                                </div>
                                <div class="favorite favorite_left"></div>

                                <div class="product_info">
                                    <h6 class="product_name">
                                        <a href="{{ route('product.show',$product->id) }}">{{ $product->name }}</a>
                                    </h6>
                                    <div class="product_price">${{ $product->descount_price }}<span>${{
                                            $product->current_price }}</span>
                                    </div>
                                </div>
                            </div>
                            <div class="red_button add_to_cart_button"><a href="#">add to cart</a></div>
                        </div>
                        @endforeach

                        <!-- Product 2 -->

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Benefit -->

    <div class="benefit">
        <div class="container">
            <div class="row benefit_row">
                <div class="col-lg-3 benefit_col">
                    <div class="benefit_item d-flex flex-row align-items-center">
                        <div class="benefit_icon"><i class="fa fa-truck" aria-hidden="true"></i></div>
                        <div class="benefit_content">
                            <h6>free shipping</h6>
                            <p>Suffered Alteration in Some Form</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 benefit_col">
                    <div class="benefit_item d-flex flex-row align-items-center">
                        <div class="benefit_icon"><i class="fa fa-money" aria-hidden="true"></i></div>
                        <div class="benefit_content">
                            <h6>cach on delivery</h6>
                            <p>The Internet Tend To Repeat</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 benefit_col">
                    <div class="benefit_item d-flex flex-row align-items-center">
                        <div class="benefit_icon"><i class="fa fa-undo" aria-hidden="true"></i></div>
                        <div class="benefit_content">
                            <h6>45 days return</h6>
                            <p>Making it Look Like Readable</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 benefit_col">
                    <div class="benefit_item d-flex flex-row align-items-center">
                        <div class="benefit_icon"><i class="fa fa-clock-o" aria-hidden="true"></i></div>
                        <div class="benefit_content">
                            <h6>opening all week</h6>
                            <p>8AM - 09PM</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    @push('extra-style')
    <link rel="stylesheet" type="text/css" href="styles/main_styles.css">
    @endpush
    @push('extra-script')
    <script src="js/custom.js"></script>
    @endpush
</x-app-layout>
