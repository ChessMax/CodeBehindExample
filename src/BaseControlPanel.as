/**
 * Created by ChessMax on 18.04.2014.
 */
package
{
    import flash.events.MouseEvent;

    import spark.components.Button;
    import spark.components.Group;

    /**
     * Класс с базовой логикой панели управления
     * Created 18.04.2014
     * Version 1.0
     * Copyright (c) 2014
     * @author ChessMax (www.chessmax.ru)
     */
    public class BaseControlPanel extends Group
    {
        /**
         * Кнопка стоп
         */
        public var stopButton :Button;
        /**
         * Кнопка старт
         */
        public var startButton:Button;

        public function BaseControlPanel()
        {
            super();
        }

        /**
         * @inheritDoc
         */
        override protected function createChildren():void
        {
            super.createChildren();

            stopButton.addEventListener(MouseEvent.CLICK, onStopButtonClicked);
        }

        /**
         * Обработчик клика по кнопке старт
         * @param e
         */
        protected function onStartButtonClicked(e:MouseEvent):void
        {
            trace("Start");
        }

        /**
         * Обработчик клика по кнопке стоп
         * @param e
         */
        private function onStopButtonClicked(e:MouseEvent):void
        {
            trace("Stop");
        }
    }
}
