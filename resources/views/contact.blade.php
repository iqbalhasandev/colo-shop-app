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
                            <a href="javascript:void(0);"><i class="fa fa-angle-right"
                                    aria-hidden="true"></i>Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Map Container -->

        <div class="row">
            <div class="col">
                <div id="google_map">
                    <div class="map_container">
                        <div id="map">

                            <iframe src="{{ setting('site.map') }}" width="100%" height="95%" style="border:0;"
                                allowfullscreen="" loading="lazy"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Contact Us -->

        <div class="row">
            <div class="col-lg-6 contact_col">
                <div class="contact_contents">
                    <h1>Contact Us</h1>
                    <p>
                        There are many ways to contact us. You may drop us a line, give
                        us a call or send an email, choose what suits you the most.
                    </p>
                    <div>
                        <p>{{ setting('site.phone') }}</p>
                    </div>
                    <div>
                        <p>{{ setting('site.email') }}</p>
                    </div>
                    <div>
                        <p>{{ setting('site.opening_date') }}</p>
                    </div>
                </div>

            </div>

            <div class="col-lg-6 get_in_touch_col">
                <div class="get_in_touch_contents">
                    <h1>Get In Touch With Us!</h1>
                    <p>Fill out the form below to recieve a free and confidential.</p>

                    @if (session()->has('success'))
                    <div class="alert alert-success" role="alert">
                        {{ session()->get('success') }}
                    </div>
                    @endif

                    <form action="{{ route('contact.store') }}" method="POST">
                        @csrf
                        <div>
                            <input id="input_name" class="form_input input_name input_ph" type="text" name="name"
                                placeholder="Name" required="required" data-error="Name is required." />
                            <input id="input_email" class="form_input input_email input_ph" type="email" name="email"
                                placeholder="Email" required="required" data-error="Valid email is required." />
                            <input id="input_website" class="form_input input_website input_ph" type="url" name="name"
                                placeholder="Website" required="required" data-error="Name is required." />
                            <textarea id="input_message" class="input_ph input_message" name="message"
                                placeholder="Message" rows="3" required
                                data-error="Please, write us a message."></textarea>
                        </div>
                        <div>
                            <button id="review_submit" type="submit" class="red_button message_submit_btn trans_300"
                                value="Submit">
                                send message
                            </button>
                        </div>
                    </form>
                </div>
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
