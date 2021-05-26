require "spec"
require "webmock"
require "../src/www"

WebMock.stub(:get, "https://www.example.org").to_return(body_io: IO::Memory.new("test body"))
