package yourdomain.modules.moduleA.configs
{
	import flash.display.DisplayObjectContainer;

	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.impl.Context;

	public class ModuleAContext
	{
		private var context:IContext;

		public function ModuleAContext(view:DisplayObjectContainer)
		{
			context = new Context()
				.install(MVCSBundle)
				.configure(MediatorsConfig, ModuleConnectorConfig)
				.configure(new ContextView(view));
		}
	}
}
