package {

    import flash.display.Sprite;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;
    import flash.events.Event;

    public class Main extends Sprite {

        public function Main() {
            ( stage ? onAddedToStage( ) : addEventListener(Event.ADDED_TO_STAGE, onAddedToStage) );
        }

        private function onAddedToStage( event:Event=null ):void
        {
            if ( event )
                removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);

            stage.scaleMode = StageScaleMode.NO_SCALE;
            stage.align     = StageAlign.TOP_LEFT;
        }
    }
}
