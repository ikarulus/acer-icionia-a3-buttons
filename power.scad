displayEdge = 11;
caseEdge = displayEdge-3.5;
caseEdgeDiff = displayEdge-caseEdge;
height = 2.1;
depth = 4.3;
zInterval = 0.5;
translate([2,0.15,0.2])polyhedron(
       points=[[0,0,0], [displayEdge,0,0],
       [caseEdgeDiff/2,height,0], [caseEdge+caseEdgeDiff/2, height, 0], [0,0,depth],
       [displayEdge,0,depth], [caseEdgeDiff/2,height,depth-zInterval],
       [caseEdge+caseEdgeDiff/2, height, depth-zInterval]],
       faces=[[2,3,1,0],[4,5,7,6],[4,6,2,0],[1,5,4,0], [3,7,5,1], [2,6,7,3]]
       );
      
cube([displayEdge+4,2.5,0.4]);
