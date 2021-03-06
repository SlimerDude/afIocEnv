
** 'IoC Config' values as provided by 'IoC Env'.
@Js
const mixin IocEnvConfigIds {
	
	** Returns the environment Str.
	static const Str	env		:= "afIocEnv.env"

	** Returns 'true' if environment is 'prod', 'production' or *undefined*.
	static const Str	isProd	:= "afIocEnv.isProd"

	** Returns 'true' if environment is 'stage' or 'staging'.
	static const Str	isStage	:= "afIocEnv.isStage"

	** Returns 'true' if environment is 'test' or 'testing'.
	static const Str	isTest	:= "afIocEnv.isTest"

	** Returns 'true' if environment is 'dev' or 'development'.
	static const Str	isDev	:= "afIocEnv.isDev"
}
