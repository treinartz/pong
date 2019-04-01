import java.util.Map;

void setup() {
  int vertexNum = 9; 
  int source = 0; 
  // Adjacency list representation of the connected edges 
  Map<Integer, ArrayList<Node>>adj2=new HashMap<Integer, ArrayList<Node>>();

  for (int i = 0; i < vertexNum; i++) { 
    if (adj2.get(i)==null) {
      adj2.put(i, new ArrayList<Node>());
    }
  } 
  ////////////////////////////////////////////////////////////////
  // Inputs for the DPQ graph in a map representation
  adj2.get(0).add(new Node(1, 4)); 
  adj2.get(0).add(new Node(7, 8)); 

  adj2.get(1).add(new Node(2, 8)); 
  adj2.get(1).add(new Node(0, 4));
  //adj2.get(1).add(new Node(7, 11));

  adj2.get(2).add(new Node(1, 8));
  adj2.get(2).add(new Node(3, 7));
  adj2.get(2).add(new Node(8, 2));
  adj2.get(2).add(new Node(5, 4));

  adj2.get(3).add(new Node(4, 9));
  adj2.get(3).add(new Node(2, 7));
  //adj2.get(3).add(new Node(5, 14));

  adj2.get(4).add(new Node(3, 9));
  adj2.get(4).add(new Node(5, 10));

  adj2.get(5).add(new Node(4, 10)); 
  adj2.get(5).add(new Node(6, 2)); 
  adj2.get(5).add(new Node(2, 4));
  adj2.get(5).add(new Node(3, 14));

  adj2.get(6).add(new Node(8, 6)); 
  adj2.get(6).add(new Node(5, 2)); 
  adj2.get(6).add(new Node(7, 1));

  adj2.get(7).add(new Node(6, 1));
  adj2.get(7).add(new Node(8, 7)); 
  adj2.get(7).add(new Node(1, 11));
  adj2.get(7).add(new Node(0, 8)); 

  adj2.get(8).add(new Node(2, 2)); 
  adj2.get(8).add(new Node(6, 6)); 
  adj2.get(8).add(new Node(7, 7)); 
  
  println(adj2);
  // Calculate the single source shortest path 
  DPQ dpq = new DPQ(vertexNum); 
  dpq.dijkstra(adj2, source); 

  // Print the shortest path to all the nodes from the source node 
  System.out.println("The shorted path from node :"); 
  for (int i = 0; i < dpq.dist.length; i++) 
    System.out.println(source + " to " + i + " is "+ dpq.dist[i]);
} 
