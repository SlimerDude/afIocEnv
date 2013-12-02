using afIoc
using afIocConfig
//using afIocEnv

class Example {
	@Inject IocEnv iocEnv

	@Config { id="afIocEnv.isProd" }
	@Inject Bool isProd

	new make(|This| in) { in(this) }
	
	Void go() {
		echo("The environment is '${iocEnv.env}'")
		
		if (isProd) {
			echo("I'm in Production!")
		} else {
			echo("I'm in Development!!")
		}
	}
}
	
class Main {
	Void main() {
		registry := RegistryBuilder().addModules([AppModule#, IocEnvModule#, IocConfigModule#]).build.startup
		example  := (Example) registry.dependencyByType(Example#)
		example.go()
	}
}

class AppModule {
	static Void bind(ServiceBinder binder) {
		binder.bindImpl(Example#)
	}		
}
