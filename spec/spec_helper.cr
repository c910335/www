require "spec"
require "webmock"
require "../src/www"

WebMock.stub(:get, "https://www.example.org").to_return(body_io: IO::Memory.new("test body 1"))
WebMock.stub(:get, "https://www.example.com").to_return(body_io: IO::Memory.new("test body 2"))
WebMock.stub(:get, "https://example.org").to_return(body_io: IO::Memory.new("test body 3"))
WebMock.stub(:get, "https://example.com").to_return(body_io: IO::Memory.new("test body 4"))
