import 'package:lua_dardo_async/lua.dart';

Future<void> main(List<String> arguments) async {
  await loop();
  await awaitPrint();
}

Future<void> loop() async {
  LuaState state = LuaState.newState();
  await state.openLibs();

  state.registerAsync("wait", (ls) => Future.delayed(Duration(seconds: 1), () => 0));
  state.loadString(r'''
a=10
while( a < 20 ) do
   print("a value is", a)
   a = a+1
end
''');
  await state.call(0, 0); // Use await aqui para garantir que o código Lua seja concluído
}

Future<void> awaitPrint() async {
  LuaState state = LuaState.newState();
  await state.openLibs();
  state.registerAsync("wait", (ls) => Future.delayed(Duration(seconds: 1), () => 0));
  state.loadString(r'''
   print("before the wait")
   wait()
   print("after the wait")
   ''');
  await state.call(0, 0); // Use await aqui para garantir que o código Lua seja concluído
}
