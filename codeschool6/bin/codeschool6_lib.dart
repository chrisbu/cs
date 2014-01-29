import 'superheroes.dart';
import 'package:unittest/unittest.dart';
import 'package:logging/logging.dart';

main() {
  var steve = new Villain("Dartman");
//  var joe = new Villain("Dr Slow");
//  steve.sayHello();
//  joe.sayHello();
  
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) => print("LOG: ${rec.message}"));
  Logger log = new Logger('heroesApp');
  _foo();
  print(steve._alias());
  
  test("Test Alias", () {
    log.info("Testing alias");
    expect(steve._alias(), equals("Dartman"));
  });
}