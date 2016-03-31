'use strict';
(function(){
  angular
  .module()
  .contorller("GrumblesShowController", [
    "GrumbleFactory"
    "$stateParams",
    GrumbleShowControllerFunction
  ]);
function GrumbleShowControllerFunction( GrumbleFactory, $stateParams){
  this.grumble = GrumbleFactory.get({id: $stateParams.id});
}
})();
