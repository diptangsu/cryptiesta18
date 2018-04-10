<section id="content">
    <div class="card" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
        <div class="card__header">
            <h3>{!! $question->name !!}</h3>
            <br>
            <p style="font-size: 15px;">{!! $question->question !!}</p>
        </div>

        <div class="actions">
            <a style="color: #58e735;">
                <i style="color: #58e735;" class="zmdi zmdi-plus-circle-o zmdi-hc-fw"></i>
                {!! $question->points !!}
            </a>
            <a style="color: #d92d13;">
                <i style="color: #d92d13;" class="zmdi zmdi-minus-circle-outline zmdi-hc-fw"></i>
                {{ $question->negative }}
            </a>
        </div>
    </div>

    @include('subviews.hint')

    @include('subviews.images')

    @include('subviews.files')
    <br>
    @include('subviews.links')

    @include('subviews.submit')

</section>