<div class="topbar-right">
   <div class="top-search">
    <div class="top-search-widget">
      <div class="top-widget-search">
        <form action="<?php echo home_url('/');?>" method="GET">
        <button type="submit"><i class="fa fa-search"></i></button>
        <input type="search" class="form-control placeholder" placeholder="<?php echo esc_attr_x('Search....', 'placeholder', 'carnews');?>" name="s" value="<?php echo get_search_query();?>">
      </form>
      </div>
    </div>
  </div>
</div>