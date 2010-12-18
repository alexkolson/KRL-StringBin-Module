# KRL StringBin Module
This is a KRL (Kynetx Rule Language) module for the key-value storage service, [StringBin](http://stringbin.com), created by [Mike Grace](https://github.com/mikegrace).

## Using the module
You can use the module in your Kynetx apps like so:

    meta {
        use module a369x115 alias Bin with pin = "yourpinhere"
    }

    rule read_from_bin {
        select when pageview ".*"
        pre {
             juciyDetails = Bin:read("keyname");
        }
    }
