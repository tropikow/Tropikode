<script>  
  export default {
    middleware({ store, redirect }) {      
      if (!!store.state.auth == false) {        
        return redirect('/auth')
      } else {
        return redirect('/dashboard')
      }
    }
  }
</script>