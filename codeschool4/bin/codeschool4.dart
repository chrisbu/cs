import 'dart:async';

void main() {
  runEx("4.1",ex1);
  runEx("4.2",ex2);
  runEx("4.3",ex3);
  runEx("4.4",ex4);
  runEx("4.5",ex5);
  runEx("4.6",ex6);
  runEx("4.7",ex7);
  runEx("4.8",ex8);
  runEx("4.9",ex9);
}

runEx(name, ex) {
 print(name + ":");
 ex();
}

ex1() {
  checkHeroOrVillain(name,[heroText="Hero",villainText="Villain"]) {
    print(name);
    print(heroText);
    print(villainText);
  }
  
  checkHeroOrVillain("Dartman", "Superhero", "SuperVillain");
}

ex2() {
  sayHello(name, [greeting="Hello", count=1]) {
    for (var i = 0; i < count; i++) {
      print("$greeting $name");
    }
    
  }

  main() {
    sayHello("Dartman", "Watcha");
    sayHello("Dartman", "Watcha", 3);
    sayHello("Captain Dart");
  } 
  main();
}

ex3() {
  sayHello(name, {greeting:"Hello", count:1}) {
    for (var i = 0; i < count; i++) {
      print("$greeting $name");
    }

  }

  main() {
    sayHello("Dartman", greeting:"Watcha");
    sayHello("Dartman", count:3, greeting:"Watcha" );
    sayHello("Captain Dart");
  } 
  main();
}

ex4() {
  var sayHello = () {
    print("Hello"); 
  };
  
  sayHello = () => "Goodbye";
  print(sayHello());
}

ex5() {
  print("Main started");
  var oneSecond = new Duration(seconds:1);
    
  Timer t = new Timer(oneSecond, () => print("one second elapsed"));
  print("Main finished");
}

ex6() {
  sayHello(name) {
    var oneSecond = new Duration(seconds:1);
    new Timer(oneSecond, () {
      return "Hello $name";
    });
  }

  main() {
    print("Main started");
    var message = sayHello("Dartman");
    print(message);
    print("Main finished");
  }
  main();
}

ex7() {
   var sayHello = () {
     print("Hello");
     
     Completer c = new Completer();
     
     Timer t = new Timer(new Duration(seconds:1), () {
       c.complete("Hello after 1 second");
     });
     
     return c.future;
   };
   
   var message = sayHello();
   message.then((result) => print(result));
}

ex8() {
  var sayHello = () {
    print("Hello");
    
    Completer c = new Completer();
    
    Timer t = new Timer(new Duration(seconds:1), () {
      c.complete("Hello after 1 second");
    });
    
    return c.future;
  };
  
  var message = sayHello();
  print(message);
  message.then((result) => print(result));
}

ex9() {
  Stream getHeroStream() {
    var heroes = ["Dartman", "Dr Slow", "Captain Dart"];
    
    var streamController = new StreamController();  
  
    int heroCount = 0; 
    new Timer.periodic(new Duration(seconds:1), (Timer t) {
      if (heroCount < heroes.length) {
        streamController.add(heroes[heroCount]);
        heroCount++;
      } else {
        t.cancel();
        //print("No more heroes");
        streamController.close();
       }
    });
    
    return streamController.stream;
  }
  
  checkHeroOrVillain(name) {
    if (name.contains('Dart')) {
      return 'Hero';
    }
    else {
      return 'Villain';
    } 
  }
  
  var heroStream = getHeroStream().asBroadcastStream();
  
  //heroStream.listen((data) => print("Stream: " + data));
  
  heroStream
    .where((hero) => checkHeroOrVillain(hero) == "Hero")
    .listen((data) => print("Hero: " + data), 
            onDone: () => print("No more heroes"));
  
  heroStream
    .where((hero) => checkHeroOrVillain(hero) != "Hero")
    .listen((data) => print("Villain: " + data));
  
}