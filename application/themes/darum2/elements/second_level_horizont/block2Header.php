<?php use Application\Src\Page\DarumPageUtils; ?>
<?php if ($c->getCollectionID() == DarumPageUtils::ADVICE_PARENTS_CATEGORY_CID):?>
                <h1 class="allarticles-h1 allarticles-h1-mainarticles">Популярные советы родителям</h1>
            <?php elseif($c->getCollectionID() == DarumPageUtils::ADVICE_STUDENTS_CATEGORY_CID):?>
                <h1 class="allarticles-h1 allarticles-h1-mainarticles">Популярные советы студентам</h1>
            <?php elseif($c->getCollectionID() == DarumPageUtils::ADVICE_RELATIONS_CATEGORY_CID):?>
                <h1 class="allarticles-h1 allarticles-h1-mainarticles">Популярные советы по отношениям</h1>
            <?php elseif ($c->getCollectionID() == DarumPageUtils::ARTICLE_PARENTS_CATEGORY_CID):?>
                <h1 class="allarticles-h1 allarticles-h1-mainarticles">Популярные статьи родителям</h1>
            <?php elseif($c->getCollectionID() == DarumPageUtils::ARTICLE_STUDENTS_CATEGORY_CID):?>
                <h1 class="allarticles-h1 allarticles-h1-mainarticles">Популярные статьи студентам</h1>
            <?php elseif($c->getCollectionID() == DarumPageUtils::ARTICLE_RELATIONS_CATEGORY_CID):?>
                <h1 class="allarticles-h1 allarticles-h1-mainarticles">Популярные статьи по отношениям</h1>
            <?php else:?>
                <h1 class="allarticles-h1 allarticles-h1-mainarticles">Раздел не опеределен (ошибка)</h1>
            <?php endif;?>
