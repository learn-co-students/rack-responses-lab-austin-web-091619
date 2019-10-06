class Application

    def call(env)
        resp = Rack::Response.new
        time = Time.now
        hour = time.strftime("%k").to_i 
        if hour>12
            resp.write("Good Afternoon!")
        else
            resp.write("Good Morning!")
        end
        resp.finish

    end

end
