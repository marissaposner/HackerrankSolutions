

    // Complete the printLinkedList function below.

    /*
     * For your reference:
     *
     * SinglyLinkedListNode {
     *     int data;
     *     SinglyLinkedListNode next;
     * }
     *
     */
    static void printLinkedList(SinglyLinkedListNode head) {
        if(head.next==null){
            System.out.println("null");
        }
        else{
            SinglyLinkedListNode curr=head; 
            while(curr!=null){
                System.out.println(curr.data);
                curr=curr.next;
            }
        }
    }


