<?php
class CActionMyexampleList extends CController {
    protected function doAction() {
        $this->setResponse(new CControllerResponseData([
            'title' => _('My Example Page'),
            'content' => _('Hello from my module running in Docker!')
        ]));
    }
}
