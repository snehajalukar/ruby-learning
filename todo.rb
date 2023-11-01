# define a todo list
# three methods:
    # 1. display what's on our list
    # 2. add items to the list
    # 3. complete an item on the list

class TodoList
    def initialize()
      @list = []
      @completed_list = []

    end


    def display
        p("todo: #{@list}")
        p("completed: #{@completed_list}")
    end

    def add(item)
        @list << item 
    end

    def complete(item)
        # @list.delete(item)
        # a.each_index {|index|  puts "#{index} #{a[index]}" }

        # @list.each_index do |i|
        #     if @list[i] == item
        #         @list.delete_at(i)
        #         break
        #     end
        # end


        @list.each_with_index do |value, index|
            if value == item
                @list.delete_at(index)
                break
            end
        end

        @completed_list << item
    end

    def remove(item)
        @list.delete(item)
    end

end

list = TodoList.new()

list.add("test")
list.add("test")
list.add("test 2")
list.add("test 3")
list.display

puts("====")

list.complete("test")
list.display

puts("====")

list.remove("test 2")
list.display
