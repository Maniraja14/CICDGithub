component extends="testbox.system.BaseSpec" {

      function run() {
        describe("Environment Controlled Test", function() {
          it("should pass if TESTKEY is 1", function() {
            expect("2").toBe("1"); // test passes only if TESTKEY=1
          });
    
        });
      }

}
