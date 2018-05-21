class Main extends hxd.App {

    var text:h2d.Text;
    var size:Int;

    override public function init() {
        text = new h2d.Text(hxd.res.DefaultFont.get(), s2d);
        text.text = 'Probatzen';
        size = text.font.size;
    }

    override public function update(_) {

        var p_size = size;
        if (hxd.Key.isReleased(hxd.Key.H))
            size++;
        else if (hxd.Key.isReleased(hxd.Key.T))
            size--;
        if (size != p_size) {
            text.font.resizeTo(size);
            @:privateAccess text.rebuild();
            trace('size: $size');
        }
    }

    static function main() {
        new Main();
    }
}
