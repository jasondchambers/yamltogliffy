HEADER_TEMPLATE = <<-FOO
{
  "contentType": "application/gliffy+json",
  "version": "1.3",
  "stage": {
    "background": "#FFFFFF",
    "width": 1520,
    "height": 341,
    "nodeIndex": 255,
    "autoFit": true,
    "exportBorder": false,
    "gridOn": true,
    "snapToGrid": true,
    "drawingGuidesOn": false,
    "pageBreaksOn": false,
    "printGridOn": false,
    "printPaper": null,
    "printShrinkToFit": false,
    "printPortrait": false,
    "maxWidth": 5000,
    "maxHeight": 5000,
    "themeData": null,
    "imageCache": {},
    "viewportType": "default",
    "fitBB": {
      "min": {
        "x": 19.999999999999996,
        "y": 20
      },
      "max": {
        "x": 1520,
        "y": 340.00000000000176
      }
    },
    "printModel": {
      "pageSize": "Letter",
      "portrait": true,
      "fitToOnePage": false,
      "displayPageBreaks": false
    },
    "objects": [
FOO

TEAM_TYPE_TEMPLATE = <<-FOO
      {
        "x": {{team_type_label_x}},
        "y": {{team_type_label_y}},
        "rotation": 270,
        "id": 2,
        "width": 320,
        "height": 40,
        "uid": "com.gliffy.shape.basic.basic_v1.default.rectangle",
        "order": 2,
        "lockAspectRatio": false,
        "lockShape": false,
        "graphic": {
          "type": "Shape",
          "Shape": {
            "tid": "com.gliffy.stencil.rectangle.basic_v1",
            "strokeWidth": 1,
            "strokeColor": "#000000",
            "fillColor": "#666666",
            "gradient": false,
            "dashStyle": null,
            "dropShadow": false,
            "state": 0,
            "opacity": 1,
            "shadowX": 0,
            "shadowY": 0
          }
        },
        "linkMap": [],
        "children": [
          {
            "x": 5.818181818181817,
            "y": 0,
            "rotation": 0,
            "id": 5,
            "width": 308.3636363636362,
            "height": 14,
            "uid": null,
            "order": 3,
            "lockAspectRatio": false,
            "lockShape": false,
            "graphic": {
              "type": "Text",
              "Text": {
                "overflow": "none",
                "paddingTop": 8,
                "paddingRight": 0,
                "paddingBottom": 8,
                "paddingLeft": 0,
                "outerPaddingTop": 6,
                "outerPaddingRight": 6,
                "outerPaddingBottom": 2,
                "outerPaddingLeft": 6,
                "type": "fixed",
                "lineTValue": null,
                "linePerpValue": null,
                "cardinalityType": null,
                "html": "<p style=\\\"text-align:center;\\\"><span style=\\\"color:#ffffff;text-decoration:none;font-family:Arial;font-size:12px;\\\"><span style=\\\"text-decoration:none;\\\">{{team_type}}</span></span></p>",
                "rawHtml": false,
                "tid": null,
                "calculatedWidth": 308.3636363636362,
                "calculatedHeight": 14,
                "valign": "middle",
                "vposition": "none",
                "hposition": "none"
              }
            },
            "children": null,
            "hidden": false,
            "layerId": "D7GxUshhRKwr",
            "flipHorizontal": false,
            "flipVertical": false
          }
        ],
        "hidden": false,
        "layerId": "D7GxUshhRKwr",
        "flipHorizontal": false,
        "flipVertical": false
      },
      {
        "x": {{team_type_main_canvas_x}},
        "y": {{team_type_main_canvas_y}},
        "rotation": 0,
        "id": 8,
        "width": 1720,
        "height": 340,
        "uid": "com.gliffy.shape.basic.basic_v1.default.rectangle",
        "order": 0,
        "lockAspectRatio": false,
        "lockShape": false,
        "graphic": {
          "type": "Shape",
          "Shape": {
            "tid": "com.gliffy.stencil.rectangle.basic_v1",
            "strokeWidth": 1,
            "strokeColor": "#000000",
            "fillColor": "{{team_type_main_canvas_bg}}",
            "gradient": false,
            "dashStyle": null,
            "dropShadow": false,
            "state": 0,
            "opacity": 1,
            "shadowX": 0,
            "shadowY": 0
          }
        },
        "linkMap": [],
        "children": null,
        "hidden": false,
        "layerId": "D7GxUshhRKwr",
        "flipHorizontal": false,
        "flipVertical": false
      },
      {
        "x": {{team_type_leaders_x}},
        "y": {{team_type_leaders_y}},
        "rotation": 0,
        "id": 6,
        "width": 1720,
        "height": 30,
        "uid": "com.gliffy.shape.basic.basic_v1.default.rectangle",
        "order": 4,
        "lockAspectRatio": false,
        "lockShape": false,
        "graphic": {
          "type": "Shape",
          "Shape": {
            "tid": "com.gliffy.stencil.rectangle.basic_v1",
            "strokeWidth": 1,
            "strokeColor": "#000000",
            "fillColor": "{{team_type_header_bg}}",
            "gradient": false,
            "dashStyle": null,
            "dropShadow": false,
            "state": 0,
            "opacity": 1,
            "shadowX": 0,
            "shadowY": 0
          }
        },
        "linkMap": [],
        "children": [
          {
            "x": 26.545454545454522,
            "y": 0,
            "rotation": 0,
            "id": 7,
            "width": 1406.9090909090912,
            "height": 14,
            "uid": null,
            "order": 5,
            "lockAspectRatio": false,
            "lockShape": false,
            "graphic": {
              "type": "Text",
              "Text": {
                "overflow": "none",
                "paddingTop": 8,
                "paddingRight": 0,
                "paddingBottom": 8,
                "paddingLeft": 0,
                "outerPaddingTop": 6,
                "outerPaddingRight": 6,
                "outerPaddingBottom": 2,
                "outerPaddingLeft": 6,
                "type": "fixed",
                "lineTValue": null,
                "linePerpValue": null,
                "cardinalityType": null,
                "html": "<p style=\\\"text-align:center;\\\"><span style=\\\"text-decoration:none;font-family:Arial;font-size:12px;\\\"><span style=\\\"text-decoration:none;\\\">{{team_type_leaders}}</span></span></p>",
                "rawHtml": false,
                "tid": null,
                "calculatedWidth": 1406.9090909090912,
                "calculatedHeight": 14,
                "valign": "middle",
                "vposition": "none",
                "hposition": "none"
              }
            },
            "children": null,
            "hidden": false,
            "layerId": "D7GxUshhRKwr",
            "flipHorizontal": false,
            "flipVertical": false
          }
        ],
        "hidden": false,
        "layerId": "D7GxUshhRKwr",
        "flipHorizontal": false,
        "flipVertical": false
      },
FOO

TEAM_GROUP_TEMPLATE= <<-FOO
      {
        "x": {{team_group_label_x}},
        "y": {{team_group_label_y}},
        "rotation": 0,
        "id": 9,
        "width": 160,
        "height": 40,
        "uid": "com.gliffy.shape.basic.basic_v1.default.rectangle",
        "order": 6,
        "lockAspectRatio": false,
        "lockShape": false,
        "graphic": {
          "type": "Shape",
          "Shape": {
            "tid": "com.gliffy.stencil.rectangle.basic_v1",
            "strokeWidth": 1,
            "strokeColor": "#000000",
            "fillColor": "{{team_group_label_bg}}",
            "gradient": false,
            "dashStyle": null,
            "dropShadow": false,
            "state": 0,
            "opacity": 1,
            "shadowX": 0,
            "shadowY": 0
          }
        },
        "linkMap": [],
        "children": [
          {
            "x": 2.909090909090907,
            "y": 0,
            "rotation": 0,
            "id": 10,
            "width": 154.18181818181813,
            "height": 14,
            "uid": null,
            "order": 7,
            "lockAspectRatio": false,
            "lockShape": false,
            "graphic": {
              "type": "Text",
              "Text": {
                "overflow": "none",
                "paddingTop": 8,
                "paddingRight": 0,
                "paddingBottom": 8,
                "paddingLeft": 0,
                "outerPaddingTop": 6,
                "outerPaddingRight": 6,
                "outerPaddingBottom": 2,
                "outerPaddingLeft": 6,
                "type": "fixed",
                "lineTValue": null,
                "linePerpValue": null,
                "cardinalityType": null,
                "html": "<p style=\\\"text-align:center;\\\"><span style=\\\"text-decoration:none;font-family:Arial;font-size:12px;\\\"><span style=\\\"text-decoration:none;\\\">{{team_group}}</span></span></p>",
                "rawHtml": false,
                "tid": null,
                "calculatedWidth": 154.18181818181813,
                "calculatedHeight": 14,
                "valign": "middle",
                "vposition": "none",
                "hposition": "none"
              }
            },
            "children": null,
            "hidden": false,
            "layerId": "D7GxUshhRKwr",
            "flipHorizontal": false,
            "flipVertical": false
          }
        ],
        "hidden": false,
        "layerId": "D7GxUshhRKwr",
        "flipHorizontal": false,
        "flipVertical": false
      }, 
      {
        "x": {{team_group_x}},
        "y": {{team_group_y}},
        "rotation": 0,
        "id": 19,
        "width": 160,
        "height": 250,
        "uid": "com.gliffy.shape.basic.basic_v1.default.rectangle",
        "order": 1,
        "lockAspectRatio": false,
        "lockShape": false,
        "graphic": {
          "type": "Shape",
          "Shape": {
            "tid": "com.gliffy.stencil.rectangle.basic_v1",
            "strokeWidth": 1,
            "strokeColor": "#000000",
            "fillColor": "{{team_group_bg}}",
            "gradient": false,
            "dashStyle": null,
            "dropShadow": false,
            "state": 0,
            "opacity": 1,
            "shadowX": 0,
            "shadowY": 0
          }
        },
        "linkMap": [],
        "children": null,
        "hidden": false,
        "layerId": "D7GxUshhRKwr",
        "flipHorizontal": false,
        "flipVertical": false
      },
      {
        "x": {{team_group_leaders_x}},
        "y": {{team_group_leaders_y}},
        "rotation": 0,
        "id": 11,
        "width": 120,
        "height": 30,
        "uid": "com.gliffy.shape.basic.basic_v1.default.rectangle",
        "order": 8,
        "lockAspectRatio": false,
        "lockShape": false,
        "graphic": {
          "type": "Shape",
          "Shape": {
            "tid": "com.gliffy.stencil.rectangle.basic_v1",
            "strokeWidth": 1,
            "strokeColor": "#000000",
            "fillColor": "#ffffff",
            "gradient": false,
            "dashStyle": null,
            "dropShadow": false,
            "state": 0,
            "opacity": 1,
            "shadowX": 0,
            "shadowY": 0
          }
        },
        "linkMap": [],
        "children": [
          {
            "x": 2.1818181818181803,
            "y": 0,
            "rotation": 0,
            "id": 12,
            "width": 115.63636363636363,
            "height": 14,
            "uid": null,
            "order": 9,
            "lockAspectRatio": false,
            "lockShape": false,
            "graphic": {
              "type": "Text",
              "Text": {
                "overflow": "none",
                "paddingTop": 8,
                "paddingRight": 0,
                "paddingBottom": 8,
                "paddingLeft": 0,
                "outerPaddingTop": 6,
                "outerPaddingRight": 6,
                "outerPaddingBottom": 2,
                "outerPaddingLeft": 6,
                "type": "fixed",
                "lineTValue": null,
                "linePerpValue": null,
                "cardinalityType": null,
                "html": "<p style=\\\"text-align:center;\\\"><span style=\\\"text-decoration:none;font-family:Arial;font-size:12px;\\\"><span style=\\\"text-decoration:none;\\\">{{team_group_leaders}}</span></span></p>",
                "rawHtml": false,
                "tid": null,
                "calculatedWidth": 115.63636363636363,
                "calculatedHeight": 14,
                "valign": "middle",
                "vposition": "none",
                "hposition": "none"
              }
            },
            "children": null,
            "hidden": false,
            "layerId": "D7GxUshhRKwr",
            "flipHorizontal": false,
            "flipVertical": false
          }
        ],
        "hidden": false,
        "layerId": "D7GxUshhRKwr",
        "flipHorizontal": false,
        "flipVertical": false
      },
FOO
      
TEAM_TEMPLATE= <<-FOO
      {
        "x": {{team_x}},
        "y": {{team_y}},
        "rotation": 0,
        "id": 15,
        "width": 120,
        "height": 30,
        "uid": "com.gliffy.shape.basic.basic_v1.default.rectangle",
        "order": 10,
        "lockAspectRatio": false,
        "lockShape": false,
        "graphic": {
          "type": "Shape",
          "Shape": {
            "tid": "com.gliffy.stencil.rectangle.basic_v1",
            "strokeWidth": 1,
            "strokeColor": "#000000",
            "fillColor": "{{team_name_bg}}",
            "gradient": false,
            "dashStyle": null,
            "dropShadow": false,
            "state": 0,
            "opacity": 1,
            "shadowX": 0,
            "shadowY": 0
          }
        },
        "linkMap": [],
        "children": [
          {
            "x": 2.1818181818181803,
            "y": 0,
            "rotation": 0,
            "id": 16,
            "width": 115.63636363636363,
            "height": 14,
            "uid": null,
            "order": 11,
            "lockAspectRatio": false,
            "lockShape": false,
            "graphic": {
              "type": "Text",
              "Text": {
                "overflow": "none",
                "paddingTop": 8,
                "paddingRight": 0,
                "paddingBottom": 8,
                "paddingLeft": 0,
                "outerPaddingTop": 6,
                "outerPaddingRight": 6,
                "outerPaddingBottom": 2,
                "outerPaddingLeft": 6,
                "type": "fixed",
                "lineTValue": null,
                "linePerpValue": null,
                "cardinalityType": null,
                "html": "<p style=\\\"text-align:center;\\\"><span style=\\\"color:#ffffff;text-decoration:none;font-family:Arial;font-size:12px;\\\"><span style=\\\"text-decoration:none;\\\">{{team_name}}</span></span></p>",
                "rawHtml": false,
                "tid": null,
                "calculatedWidth": 115.63636363636363,
                "calculatedHeight": 14,
                "valign": "middle",
                "vposition": "none",
                "hposition": "none"
              }
            },
            "children": null,
            "hidden": false,
            "layerId": "D7GxUshhRKwr",
            "flipHorizontal": false,
            "flipVertical": false
          }
        ],
        "hidden": false,
        "layerId": "D7GxUshhRKwr",
        "flipHorizontal": false,
        "flipVertical": false
      },
FOO

TEAM_BREAKDOWN_NAME_TEMPLATE = <<-FOO
{
  "x": {{team_breakdown_name_x}},
  "y": {{team_breakdown_name_y}},
  "rotation": 0,
  "id": 255,
  "width": 120,
  "height": 30,
  "uid": "com.gliffy.shape.basic.basic_v1.default.rectangle",
  "order": 166,
  "lockAspectRatio": false,
  "lockShape": false,
  "graphic": {
    "type": "Shape",
    "Shape": {
      "tid": "com.gliffy.stencil.rectangle.basic_v1",
      "strokeWidth": 1,
      "strokeColor": "#000000",
      "fillColor": "#f6b172",
      "gradient": false,
      "dashStyle": null,
      "dropShadow": false,
      "state": 0,
      "opacity": 1,
      "shadowX": 0,
      "shadowY": 0
    }
  },
  "linkMap": [],
  "children": [
    {
      "x": 2.1818181818181803,
      "y": 0,
      "rotation": 0,
      "id": 256,
      "width": 115.63636363636363,
      "height": 14,
      "uid": null,
      "order": 167,
      "lockAspectRatio": false,
      "lockShape": false,
      "graphic": {
        "type": "Text",
        "Text": {
          "overflow": "none",
          "paddingTop": 8,
          "paddingRight": 0,
          "paddingBottom": 8,
          "paddingLeft": 0,
          "outerPaddingTop": 6,
          "outerPaddingRight": 6,
          "outerPaddingBottom": 2,
          "outerPaddingLeft": 6,
          "type": "fixed",
          "lineTValue": null,
          "linePerpValue": null,
          "cardinalityType": null,
          "html": "<p style=\\\"text-align:center;\\\"><span style=\\\"font-family:Arial;text-decoration:none;font-size:12px;\\\"><span style=\\\"text-decoration:none;\\\">{{team_name}}</span></span></p>",
          "rawHtml": false,
          "tid": null,
          "calculatedWidth": 115.63636363636363,
          "calculatedHeight": 14,
          "valign": "middle",
          "vposition": "none",
          "hposition": "none"
        }
      },
      "children": null,
      "hidden": false,
      "layerId": "D7GxUshhRKwr",
      "flipHorizontal": false,
      "flipVertical": false
    }
  ],
  "hidden": false,
  "layerId": "D7GxUshhRKwr",
  "flipHorizontal": false,
  "flipVertical": false
},
FOO

TEAM_BREAKDOWN_MEMBERS_TEMPLATE = <<-FOO
{
  "x": {{team_breakdown_member_x}},
  "y": {{team_breakdown_member_y}},
  "rotation": 0,
  "id": 257,
  "width": 120,
  "height": 30,
  "uid": "com.gliffy.shape.basic.basic_v1.default.rectangle",
  "order": 168,
  "lockAspectRatio": false,
  "lockShape": false,
  "graphic": {
    "type": "Shape",
    "Shape": {
      "tid": "com.gliffy.stencil.rectangle.basic_v1",
      "strokeWidth": 1,
      "strokeColor": "#000000",
      "fillColor": "{{team_breakdown_member_bg}}",
      "gradient": false,
      "dashStyle": null,
      "dropShadow": false,
      "state": 0,
      "opacity": 1,
      "shadowX": 0,
      "shadowY": 0
    }
  },
  "linkMap": [],
  "children": [
    {
      "x": 2.1818181818181803,
      "y": 0,
      "rotation": 0,
      "id": 258,
      "width": 115.63636363636363,
      "height": 14,
      "uid": null,
      "order": 169,
      "lockAspectRatio": false,
      "lockShape": false,
      "graphic": {
        "type": "Text",
        "Text": {
          "overflow": "none",
          "paddingTop": 8,
          "paddingRight": 0,
          "paddingBottom": 8,
          "paddingLeft": 0,
          "outerPaddingTop": 6,
          "outerPaddingRight": 6,
          "outerPaddingBottom": 2,
          "outerPaddingLeft": 6,
          "type": "fixed",
          "lineTValue": null,
          "linePerpValue": null,
          "cardinalityType": null,
          "html": "<p style=\\\"text-align:center;\\\"><span style=\\\"font-family:Arial;text-decoration:none;font-size:12px;\\\"><span style=\\\"text-decoration:none;\\\">{{team_member}}</span></span></p>",
          "rawHtml": false,
          "tid": null,
          "calculatedWidth": 115.63636363636363,
          "calculatedHeight": 14,
          "valign": "middle",
          "vposition": "none",
          "hposition": "none"
        }
      },
      "children": null,
      "hidden": false,
      "layerId": "D7GxUshhRKwr",
      "flipHorizontal": false,
      "flipVertical": false
    }
  ],
  "hidden": false,
  "layerId": "D7GxUshhRKwr",
  "flipHorizontal": false,
  "flipVertical": false
},
FOO

FOOTER_TEMPLATE = <<-FOO
{}
    ],
    "layers": [
      {
        "guid": "D7GxUshhRKwr",
        "order": 0,
        "name": "Layer 0",
        "active": true,
        "locked": false,
        "visible": true,
        "nodeIndex": 9
      }
    ],
    "shapeStyles": {},
    "lineStyles": {},
    "textStyles": {
      "global": {
        "color": "#ffffff"
      }
    }
  },
  "metadata": {
    "title": "untitled",
    "revision": 0,
    "exportBorder": false,
    "loadPosition": "default",
    "libraries": [
      "com.gliffy.libraries.basic.basic_v1.default",
      "com.gliffy.libraries.flowchart.flowchart_v1.default",
      "com.gliffy.libraries.swimlanes.swimlanes_v1.default",
      "com.gliffy.libraries.uml.uml_v2.class",
      "com.gliffy.libraries.uml.uml_v2.sequence",
      "com.gliffy.libraries.uml.uml_v2.activity",
      "com.gliffy.libraries.erd.erd_v1.default",
      "com.gliffy.libraries.ui.ui_v3.containers_content",
      "com.gliffy.libraries.images",
      "com.gliffy.libraries.ui.ui_v3.forms_controls"
    ],
    "autosaveDisabled": false,
    "lastSerialized": 1615494752021,
    "editorVersion": null
  },
  "embeddedResources": {
    "index": 0,
    "resources": []
  }
}
FOO
