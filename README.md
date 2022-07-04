# iosToken
iOS Tokenisation Plugin & supporting files

To Setup Tokenisation
Please refer this link https://docs.tokens.studio/sync/github

Basic Requirement
To run this plugin bash version should be 5.0.0 & above. If bash version is less than version 5.0.0 upgrade
it reference https://itnext.io/upgrading-bash-on-macos-7138bd1066ba provided.

Key Patterns structure in json file to be followed as shown below
 
Example 1: Color with light & dark

{
  "ColorSet1": {
    "color": {
      "light": {
        "primary-contrast": {
          "description": "",
          "type": "color",
          "value": "#214966ff",
          "extensions": {
            "org.lukasoppermann.figmaDesignTokens": {
              "styleId": "S:d8b652658f0598875ec8bf96d4ffc76eaf6efc23,",
              "exportKey": "color"
            }
          }
        }
      },
      "dark": {
        "primary-contrast": {
          "description": "",
          "type": "color",
          "value": "#ffffffff",
          "extensions": {
            "org.lukasoppermann.figmaDesignTokens": {
              "styleId": "S:98dca337a654691b45baf4dbe233ea553b80f610,",
              "exportKey": "color"
            }
          }
        }
      }
    }
  }
}

Example 2: 

{
    "color": {
      "gray1": {
        "description": "",
        "type": "color",
        "value": "#333333ff",
        "extensions": {
          "org.lukasoppermann.figmaDesignTokens": {
            "styleId": "S:0b49d19e868ec919fac01ec377bb989174094d7e,",
            "exportKey": "color"
          }
        }
      }
    },
    "typography": {
        "foundation": {
            "worksans": {
                "fontSize": {
                    "type": "dimension",
                    "value": 34
                },
                "textDecoration": {
                    "type": "string",
                    "value": "none"
                },
                "fontFamily": {
                    "type": "string",
                    "value": "Voltaire"
                },
                "fontWeight": {
                    "type": "number",
                    "value": 400
                },
                "fontStyle": {
                    "type": "string",
                    "value": "normal"
                },
                "fontStretch": {
                    "type": "string",
                    "value": "normal"
                },
                "letterSpacing": {
                    "type": "dimension",
                    "value": -0.68
                },
                "lineHeight": {
                    "type": "dimension",
                    "value": 40.8
                },
                "paragraphIndent": {
                    "type": "dimension",
                    "value": 0
                },
                "paragraphSpacing": {
                    "type": "dimension",
                    "value": 0
                },
                "textCase": {
                    "type": "string",
                    "value": "none"
                }
            }            
        }
    }
}


