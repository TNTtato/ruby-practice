def print_tree_children(t_children, nested_lvl = 0)
  puts " "*nested_lvl + "+" + "--" + t_children[:name]
  return if t_children[:children].length == 0

  nested_lvl += 2
  t_children[:children].each do |child|
    #puts " "*nested_lvl + child[:name]
    print_tree_children(child, nested_lvl)
  end
  nested_lvl -= 2
end

tree = {
  name: 'John',
  children: [
    {
      name: 'Jim',
      children: []
    },
    {
      name: 'Zoe',
      children: [
        {
          name: 'Kyle',
          children: []
        },
        {
          name: 'Sophia',
          children: []
        }
      ]
    },
    {
      name: 'Gustavo',
      children: [
        {
          name: 'Alonso',
          children: []
        },
        {
          name: 'Tato',
          children: [
            {
              name: 'Pedro',
              children: []
            },
            {
              name: 'Luis',
              children: []
            }
          ]
        }
      ]
    }
  ]
}

print_tree_children(tree)