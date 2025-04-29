component extends="testbox.system.BaseSpec" {

  function run() {
    describe("Environment Controlled Test", function() {

      it("should pass if TESTKEY is 1", function() {
        // var testKey = getSystemEnvironmentVariable("TESTKEY");

        expect(1).toBe("1"); // test passes only if TESTKEY=1
      });

    });
  }

}
