app = Rack::Builder.app do
  use Rack::Static, urls: '/', root: 'public', index: 'index.html'
  use Rack::Chunked
  
  # Add realistic server-side flakiness that mimics production issues
  run lambda { |env| 
    # Simulate occasional slow server responses (network latency, DB delays, etc.)
    # This affects ~15% of requests - realistic for microservice environments
    if rand(100) < 15
      sleep(rand(0.1..0.5))
    end
    
    # Simulate very rare server hiccups that cause brief 500s
    # This happens in ~2% of requests - realistic for infrastructure issues
    if rand(100) < 2
      [500, {'Content-Type' => 'text/plain'}, ['Internal Server Error']]
    else
      [200, {'Content-Type' => 'text/html'}, File.open('public/index.html', File::RDONLY)]
    end
  }
end

run app
