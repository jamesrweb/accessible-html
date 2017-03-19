module Html.Attributes.A11y exposing (invisible, Role(..), role)

{-|
#### Hiding content

For more information on hiding/semi-hiding elements, please see [the a11y project.](http://a11yproject.com/posts/how-to-hide-content/)

@docs invisible

#### Roles

Learn more about roles on the [w3 website](https://www.w3.org/TR/wai-aria/roles).

@docs Role, role

-}

import Css
import Html
import Html.Attributes exposing (..)


{-| Makes content invisible without making it inaccessible.

    label [ invisible ] [ text "Screen readers can still read me!" ]
-}
invisible : Html.Attribute msg
invisible =
    style <|
        Css.asPairs
            [ Css.property "clip" "rect(1px, 1px, 1px, 1px)"
            , Css.position Css.absolute
            , Css.height (Css.px 1)
            , Css.width (Css.px 1)
            , Css.overflow Css.hidden
            , Css.margin (Css.px -1)
            , Css.padding Css.zero
            , Css.border Css.zero
            ]


{-| Set the role of a given element.

    div [ role Tablist ] [ tab1, tab2 ]
-}
role : Role -> Html.Attribute msg
role role_ =
    customRole <| roleToString role_


{-| Set the role of a given element to be a given string.

    div [ customRole "tablist" ] [ tab1, tab2 ]
-}
customRole : String -> Html.Attribute msg
customRole =
    attribute "role"


{-|
The roles defined here match [w3 website](https://www.w3.org/TR/wai-aria/roles).

To be used with `role`.
-}
type Role
    = Alert
    | Alertdialog
    | Application
    | Article
    | Banner
    | Button
    | Checkbox
    | Columnheader
    | Combobox
    | Complementary
    | Contentinfo
    | Definition
    | Dialog
    | Directory
    | Document
    | Form
    | Grid
    | Gridcell
    | Group
    | Heading
    | Img
    | Link
    | List
    | Listbox
    | Listitem
    | Log
    | Main
    | Marquee
    | Math
    | Menu
    | Menubar
    | Menuitem
    | Menuitemcheckbox
    | Menuitemradio
    | Navigation
    | Note
    | Option
    | Presentation
    | Progressbar
    | Radio
    | Radiogroup
    | Region
    | Row
    | Rowgroup
    | Rowheader
    | Scrollbar
    | Search
    | Separator
    | Slider
    | Spinbutton
    | Status
    | Tab
    | Tablist
    | Tabpanel
    | Textbox
    | Timer
    | Toolbar
    | Tooltip
    | Tree
    | Treegrid
    | Treeitem


roleToString : Role -> String
roleToString role =
    case role of
        Alert ->
            "alert"

        Alertdialog ->
            "alertdialog"

        Application ->
            "application"

        Article ->
            "article"

        Banner ->
            "banner"

        Button ->
            "button"

        Checkbox ->
            "checkbox"

        Columnheader ->
            "columnheader"

        Combobox ->
            "combobox"

        Complementary ->
            "complementary"

        Contentinfo ->
            "contentinfo"

        Definition ->
            "definition"

        Dialog ->
            "dialog"

        Directory ->
            "directory"

        Document ->
            "document"

        Form ->
            "form"

        Grid ->
            "grid"

        Gridcell ->
            "gridcell"

        Group ->
            "group"

        Heading ->
            "heading"

        Img ->
            "img"

        Link ->
            "link"

        List ->
            "list"

        Listbox ->
            "listbox"

        Listitem ->
            "listitem"

        Log ->
            "log"

        Main ->
            "main"

        Marquee ->
            "marquee"

        Math ->
            "math"

        Menu ->
            "menu"

        Menubar ->
            "menubar"

        Menuitem ->
            "menuitem"

        Menuitemcheckbox ->
            "menuitemcheckbox"

        Menuitemradio ->
            "menuitemradio"

        Navigation ->
            "navigation"

        Note ->
            "note"

        Option ->
            "option"

        Presentation ->
            "presentation"

        Progressbar ->
            "progressbar"

        Radio ->
            "radio"

        Radiogroup ->
            "radiogroup"

        Region ->
            "region"

        Row ->
            "row"

        Rowgroup ->
            "rowgroup"

        Rowheader ->
            "rowheader"

        Scrollbar ->
            "scrollbar"

        Search ->
            "search"

        Separator ->
            "separator"

        Slider ->
            "slider"

        Spinbutton ->
            "spinbutton"

        Status ->
            "status"

        Tab ->
            "tab"

        Tablist ->
            "tablist"

        Tabpanel ->
            "tabpanel"

        Textbox ->
            "textbox"

        Timer ->
            "timer"

        Toolbar ->
            "toolbar"

        Tooltip ->
            "tooltip"

        Tree ->
            "tree"

        Treegrid ->
            "treegrid"

        Treeitem ->
            "treeitem"
