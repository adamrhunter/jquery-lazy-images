# Initializer Support
Jquery::LazyImages::Options.default_image = 'default_image_name'


# jquery-lazy-images

jQuery plugin for lazy-loading of images. Why download what you can't see?

Updated to 1.8.2

## Installation

### Rails 3.1 or greater (with asset pipeline *enabled*)

The jquery.lazy-images files will be added to the asset pipeline and available for you to use.

Add the following line to both app/assets/javascripts/application.js and to app/assets/stylesheets/application.css

```js
//= require jquery.lazy-images
```

### Rails 3.0 or earlier (or without asset pipeline)

Support coming soon.

## Usage

All images rendered with image_tag will automatically be lazy-loaded.

### Images in email

Lazy-loading of images in email *really* doesn't work. We haven't thought of a performant way
to automatically make these images eager-loading, so you'll need to change your image_tag's in
your email templates to eager_image_tag's.

This **dangerous** command may help you with this:

```bash
  sed -i 's/image_tag/eager_image_tag/g' app/views/*_mailer/*
```

## Acknowledgements

Thanks to Mika Tuupola for creating [jquery.lazyload.js](http://www.appelsiini.net/projects/lazyload)!
This gem bundles that library, and he's done most of the hard work for us.