
import snow.api.Debug.*;
import snow.types.Types;
import snow.modules.opengl.GL;

#if debug
import debugger.HaxeRemote;
#end

@:log_as('app')
class Main extends snow.App {

    override public function new() {
#if debug
    trace('debugging');
    new debugger.HaxeRemote(true, "localhost");
#end
        super();
    }

    override function config( config:AppConfig ) : AppConfig {

        config.window.title = 'snow empty application template';

        return config;

    } //config

    override function ready() {

        log('ready');

        app.window.onrender = render;

    } //ready

    override function onkeyup( keycode:Int, _,_, mod:ModState, _,_ ) {

        if( keycode == Key.escape ) {
            app.shutdown();
        }

    } //onkeyup

    override function update( delta:Float ) {

    } //update

    function render( window:snow.system.window.Window ) {

        GL.clearColor(1.0, 1.0, 1.0, 1.0);
        GL.clear(GL.COLOR_BUFFER_BIT);

    } //render

} //Main
