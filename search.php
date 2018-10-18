<?php get_header(); ?>
<div class="outer" id="contentwrap">
	<div class="postcont">
		<div id="content">

	<?php if (have_posts()) : ?>

		<h2 class="pagetitle">Результаты поиска</h2>

		<?php while (have_posts()) : the_post(); ?>

			<div class="postdate"><img src="<?php bloginfo('template_url'); ?>/images/date.png" /> <?php the_time('F j, Y') ?> <img src="<?php bloginfo('template_url'); ?>/images/folder.png" /> <?php the_category(', ') ?> <img src="<?php bloginfo('template_url'); ?>/images/comments.png" /> <?php comments_popup_link('Нет коммент. &#187;', '1 коммент. &#187;', '% коммент. &#187;'); ?> <?php if (current_user_can('edit_post', $post->ID)) { ?> <img src="<?php bloginfo('template_url'); ?>/images/edit.png" /> <?php edit_post_link('Правка', '', ''); } ?></div><h2 class="title"><a href="<?php the_permalink() ?>" rel="bookmark" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a></h2>

						<div <?php post_class() ?> id="post-<?php the_ID(); ?>">
                            <?php if ( function_exists("has_post_thumbnail") && has_post_thumbnail() ) { the_post_thumbnail(array(260,200), array("class" => "alignleft post_thumbnail")); } ?>
							<div class="entry">
								<?php the_content('Читать далее &raquo;'); ?>						</div>
						</div>

		<?php endwhile; ?>

		<div class="navigation">
			<?php if (function_exists("pagination")) {
    pagination($additional_loop->max_num_pages);
} ?>
		</div>

	<?php else : ?>

		<h2 class="pagetitle">Не найдено</h2>
	<?php endif; ?>

		</div>
	</div>

<?php get_sidebars(); ?>
</div>
<?php get_footer(); ?>