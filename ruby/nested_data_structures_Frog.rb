football = {
  afc: {
    AFC_North: ['Steelers', 'Ravens', 'Browns'],
    AFC_West: ['Cheifs', 'Broncos', 'Chargers']
    },
  nfc: {
    NFC_North: ['Packers', 'Lions', 'Bears'],
    NFC_West: ['Cowboys', 'Giants', 'Eagles']
    },
  superbowl: {
    team_names: ['Patriots', 'Falcons']
    }
  }

p football[:nfc][:NFC_West][1]

p football[:afc][:AFC_North].push('Bengals')

p football[:superbowl][:team_names].reverse