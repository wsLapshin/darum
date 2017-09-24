<?php

namespace Application\Src\Utility\Service;

class Text extends \Concrete\Core\Utility\Service\Text
{
    /**
     * Транслитерация строки в slug латиницей 
     * @link http://userguide.icu-project.org/transforms/general
     * @param string $handle - входная строка
     * @return string 
     */
    public function slugSafeStringTransliterate($handle, $maxlength = 128)
    {
        $string = transliterator_transliterate("Any-Latin; NFD; [:Nonspacing Mark:] Remove; NFC; [:Punctuation:] Remove; Lower();", $handle);
        return $this->slugSafeString($string, $maxlength);
    }

}
