<sample>
      <h3>{ opts.headline }</h3>
      <ul>
            <li each={ items } class="{line-thru : done}">
                  <label >
                        <input type="checkbox" onclick={ parent.toggle }>
                        <span>{ name }</span>
                  </label>
            </li>
      </ul>
      <form onsubmit={ handleSubmit }>
            <input type="text" placeholder='add new todo' ref="input">
            <button>Add #{ opts.myItems.length + 1 }</button>
      </form>

      <script>

            this.items = opts.myItems ;
            toggle(e) {
                  console.log(e.item);
                  let item = e.item;
                  item.done = !item.done;
            }
            handleSubmit(e) {
                  e.preventDefault();
                  //  { name: 'Shop for groceries' },
                  let item = {name: this.refs.input.value}

              
                  this.items.push(item)
                  console.log("handleSubmit " + item.name);
                  this.refs.input.value = ''
            }


      </script>

      <style>
            :scope {
                  font-size: 2rem;
            }
            h3 {
                  color: #444;
            }
            ul {
                  color: #999;
            }
            .line-thru {
                  text-decoration: line-through;
            }

      </style>
</sample>
