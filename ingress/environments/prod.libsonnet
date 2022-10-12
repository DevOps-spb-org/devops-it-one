local Prod(numb) = {
    name: 'prod' + numb,
    components: {
      ingress: {
        values: {
          commonLabels: {
            'qbec.io/instance': name, 
            'qbec.io/origin': 'it-one-hackathon',
            'qbec.io/deployed-by': 'team-2',
          },
          controller: {
            replicaCount: 1
          }
        }
      }
    }
  };

{
  ['prod' + i]: Prod(i)
  for i in std.range(5)
}
