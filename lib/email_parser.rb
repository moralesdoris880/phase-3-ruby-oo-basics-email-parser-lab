# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    def initialize(emails)
        @emails=emails
    end
    def parse
        newemails=@emails.split(/[,||\s||,\s]/)
        newemails=newemails.grep(/([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+[\.com || \.org])/)
        newemails=newemails.uniq

    end
end


#newemails= @emails.scan(/([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+[\.com || \.org])/)
#/([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+[\.com || \.org])/