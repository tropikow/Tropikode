<template>
    <div class="container_loading">
      <lottie-player src="https://lottie.host/524b8724-7e32-49eb-a91f-c46dee3d94b9/CxvaOkTA6d.json" background="transparent" speed="1" style="width: 600px; height: 600px" loop autoplay direction="1" mode="normal"></lottie-player>    
    </div>
  </template>
  
  <script>
  export default {
    name: 'Loading',  
  }
  </script>
  
  <style scoped>
  .container_loading{
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    width: 100%;
    background-color: #29292A;
    position: fixed;
    top: 0;
    left: 0;
    z-index: 9999;
  }
  @keyframes fadein {
    from { opacity: 0; }
    to   { opacity: 1; }
  }
  </style>
  