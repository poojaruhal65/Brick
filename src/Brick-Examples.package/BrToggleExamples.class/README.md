!!Playing with looks 

Let's take a look at a toggle button as an example. A toggle button is made of an element and an associated view model. To have it drawn on the screen, we add a look to it, such as an icon:
[[[example=BrToggleExamples>>#toogleWithMaterialIcon|expanded=true|expandedPreview=true]]]

Or a label:
[[[example=BrToggleExamples>>#toogleWithMaterialLabel|expanded=true|expandedPreview=true]]]

The icon and the label can also be combined:
[[[example=BrToggleExamples>>#toggleWithMaterialIconAndLabel|expanded=true|expandedPreview=true]]]

Changing the order of composition can also affect the rendering. In this case, the icon appears to the right of the label:
[[[example=BrToggleExamples>>#toggleWithMaterialLabelAndIcon|expanded=true|expandedPreview=true]]]

But, looks can also influence the behavior of a widget. For example, to change the icon depending of the state of the toggle, we simply make hte look listen to the toggle event and change the icon from the view model:
[[[example=BrToggleExamples>>#toggleWithMaterialChangingIcon|expanded=true|expandedPreview=true]]]
