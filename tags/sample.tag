<sample>
      <h3>{ opts.headline }</h3>
      <ul>
            <li each={ opts.myItems } class="{line-thru : done}">
                  <label >
                      <input type="checkbox" onclick={ parent.toggle }>
                      <span>{ name }</span>
                  </label>
            </li>
      </ul>

      <script>
            toggle(e) {
                  console.log(e.item);
                  let item = e.item;
                  item.done = !item.done;
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
