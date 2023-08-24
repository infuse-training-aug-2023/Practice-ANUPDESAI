require 'base64'
class Encode

    def encode(path,name)
        begin
          @txt = File.read(path)
          encoded_content = Base64.encode64("the string that will be base encoded").chomp

          string_replace = @txt.gsub("the string that will be base encoded", encoded_content)

          file = File.open(name + ".txt", "w+")
          file.write(string_replace)
          file.close

          rescue => exception
          print exception
          raise "Error writing File"
        end
    end
end
