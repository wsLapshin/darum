<?php
namespace Application\Src\Html;

use Concrete\Core\Html\Image as CoreImage;
use Concrete\Core\Entity\File\File;
use PageTheme;

class Image extends CoreImage
{
    protected $usePictureTag = false;
    protected $tag;

    protected $theme;

    /**
     * @param \File $f
     * @param null $usePictureTag
     * @param $isResponsive -  width:100%, height не указывается
     */
    public function __construct(File $f = null, $usePictureTag = null, $isResponsive=true )
    {
        if (!is_object($f)) {
            return false;
        }

        if (isset($usePictureTag)) {
            $this->usePictureTag = $usePictureTag;
        } else {
            $this->loadPictureSettingsFromTheme();
        }

        if ($this->usePictureTag) {
            if (!isset($this->theme)) {
                $c = \Page::getCurrentPage();
                $this->theme = $c->getCollectionThemeObject();
            }
            $sources = array();
            $fallbackSrc = $f->getRelativePath();
            if (!$fallbackSrc) {
                $fallbackSrc = $f->getURL();
            }
            foreach ($this->theme->getThemeResponsiveImageMap() as $thumbnail => $width) {
                $type = \Concrete\Core\File\Image\Thumbnail\Type\Type::getByHandle($thumbnail);
                if ($type != null) {
                    $src = $f->getThumbnailURL($type->getBaseVersion());
                    $sources[] = array('src' => $src, 'width' => $width);
                    if ($width == 0) {
                        $fallbackSrc = $src;
                    }
                }
            }
            $this->tag = \Concrete\Core\Html\Object\Picture::create($sources, $fallbackSrc);
        } else {
            // Return a simple image tag.
            $path = $f->getRelativePath();
            if (!$path) {
                $path = $f->getURL();
            }
            $this->tag = \HtmlObject\Image::create($path);
            if($isResponsive){
                $this->tag->width("100%"); 
            } else {
                $this->tag->width((string) $f->getAttribute('width'));
                $this->tag->height((string) $f->getAttribute('height'));
            }   
        }
    }

}
