use Rack::Static,
  :urls => ["/styleimages", "/nyfeler", "/bio.html", "/calendar.html","/contact.html", /fees.html", "/other.html", "/samples.html", "/tools.html", "/whatido.html", "/style.css"],
  :root => ".public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}

