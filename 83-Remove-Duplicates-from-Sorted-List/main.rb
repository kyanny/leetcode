# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  seen = {}
  uniq = []
  while head
    if seen[head.val]
    else
      seen[head.val] = 1
      uniq.push head
    end
    head = head.next
  end

  0.upto(uniq.size - 1) do |n|
    uniq[n].next = uniq[n+1]
  end

  uniq[0]
end


class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

head = ListNode.new(1)
head.next = ListNode.new(1)
head.next.next = ListNode.new(2)

p delete_duplicates(head)
