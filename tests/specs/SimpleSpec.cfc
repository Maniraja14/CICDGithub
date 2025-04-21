component extends="testbox.system.BaseSpec" {

    function run() {
        describe( "URL-based Test Key", function() {

            it( "should pass only if testkey=1", function() {
                param name="url.testkey" default=0;

                // Pass if testkey is 1, otherwise fail
                expect( url.testkey ).toBe( 1 );
            });

        });
    }
}
