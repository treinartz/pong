// Java implementation of Dijkstra's Algorithm  
// using Priority Queue //geeks https://www.geeksforgeeks.org/dijkstras-shortest-path-algorithm-in-java-using-priorityqueue/
import java.util.*; 
public class DPQ { 
  private int dist[]; 
  private Set<Integer> settled; 
  private PriorityQueue<Node> pq; 
  private int vertexNum; 
  Map<Integer, ArrayList<Node>> adj2; 

  public DPQ(int vertexNum) { 
    this.vertexNum = vertexNum; 
    dist = new int[vertexNum]; 
    settled = new HashSet<Integer>(); 
    pq = new PriorityQueue<Node>(vertexNum, new Node());
  } 

  // Function for Dijkstra's Algorithm for Map reprsentation
  public void dijkstra(Map<Integer, ArrayList<Node>>adj2, int source) { 
    this.adj2 = adj2; 
    for (int i = 0; i < vertexNum; i++) { 
      dist[i] = Integer.MAX_VALUE;
    }
    pq.add(new Node(source, 0)); 
    dist[0] = 0; 
    while (settled.size() != vertexNum) { 
      int from = pq.remove().node; 
      settled.add(from); 
      addNeighbours(from);
    }
  } 

  private void addNeighbours(int from) { 
    int edgeDistance = -1; 
    int newDistance = -1; 

    for (int i = 0; i < adj2.get(from).size(); i++) { 
      Node to = adj2.get(from).get(i); 

      // If current node hasn't already been processed 
      if (!settled.contains(to.node)) { 
        edgeDistance = to.cost; 
        newDistance = dist[from] + edgeDistance; 

        // If new distance is cheaper in cost 
        if (newDistance < dist[to.node]) 
          dist[to.node] = newDistance; 
          
        // Add the current node to the queue 
        pq.add(new Node(to.node, dist[to.node]));
      }
    }
  }
}
