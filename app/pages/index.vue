<script>
  export default {
    middleware({store, redirect}) {
      if(!store.state.auth.authenticated) {
        redirect('/auth')
      }
    }
  }
</script>