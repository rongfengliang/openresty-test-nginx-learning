use Test::Nginx::Socket 'no_plan';

run_tests();

__DATA__

=== TEST 1: hello, world
This is just a simple demonstration of the
echo directive provided by ngx_http_echo_module.

--- main_config
env MY_ENVIRONMENT;

--- http_config
    init_worker_by_lua_block {
        print("init")
    }
    
--- config
location = /t {
    echo "hello, world!";
}
--- request
GET /t
--- error_code: 200
