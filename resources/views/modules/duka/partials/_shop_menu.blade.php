<div class="col-md-3">
   <div class="card">
      <div class="card-body">
         <ul class="nav nav-pills nav-stacked product">
            <li class="nav-link {{ Nav::isRoute('duka.products.edit') }}">
               <a href="{!! route('duka.products.edit',$productID) !!}"> <i class="fa fa-info-circle" aria-hidden="true"></i> Information</a>
            </li>

            <li class="nav-link {{ Nav::isResource('images') }}">
               <a href="{!! route('duka.product.images', $productID) !!}"> <i class="fas fa-images"></i> Images</a>
            </li>
         </ul>
      </div>
   </div>
</div>
