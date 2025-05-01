component extends="testbox.system.BaseSpec" {

  function run() {
      describe( "Environment Controlled Test", function() {
          it( "should pass if TESTKEY is 1", function() {
              var testKey = createObject("java", "java.lang.System").getenv("TESTKEY") ? 1;
              expect( testKey ).toBe( "1" );
          });

      });
  }

}
