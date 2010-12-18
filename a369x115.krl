ruleset a369x115 {
    meta {
        name "StringBin Module"
        description <<
            StringBin Module
        >>
        author "AKO"
        logging off

        provide read, write, destroy
        configure using pin = "nopin"
    }

    global {

        datasource write <- "http://api.stringbin.com/1/write?" cachable for 1 second
        datasource read <- "http://api.stringbin.com/1/read?" cachable for 1 second

        write = function(k,v) {
            datasource:write({"pin":pin,"key":k,"value":v})
        }

        read = function(k) {
            datasource:read({"pin":pin,"key":k})
        }

        destroy = function(k) {
            datasource:write({"pin":pin,"key":k,"value":""})
        }
    }
}
