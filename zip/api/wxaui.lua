--[[-----------------------------------------------------------------------------
 
 
 @module wxaui
 @usage require("wx")
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiSimpleTabArt 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiSimpleTabArt] wxAuiSimpleTabArt
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiSimpleTabArt] delete
 @param #wxAuiSimpleTabArt arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiDockUIPart 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockUIPart] delete
 @param #wxAuiDockUIPart arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockUIPart] dock
 @param #wxAuiDockUIPart arg1 
 @param #wxAuiDockInfo arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockUIPart] sizer_item
 @param #wxAuiDockUIPart arg1 
 @param #wxSizerItem arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockUIPart] rect
 @param #wxAuiDockUIPart arg1 
 @param #wxRect arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockUIPart] type
 @param #wxAuiDockUIPart arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockUIPart] cont_sizer
 @param #wxAuiDockUIPart arg1 
 @param #wxSizer arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockUIPart] orientation
 @param #wxAuiDockUIPart arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockUIPart] button
 @param #wxAuiDockUIPart arg1 
 @param #wxAuiPaneButton arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockUIPart] pane
 @param #wxAuiDockUIPart arg1 
 @param #wxAuiPaneInfo arg2 
]]

--[[-----------------------------------------------------------------------------
 
 value: 8
 @field [parent=#wxAuiDockUIPart] typePaneButton
]]

--[[-----------------------------------------------------------------------------
 
 value: 5
 @field [parent=#wxAuiDockUIPart] typePaneSizer
]]

--[[-----------------------------------------------------------------------------
 
 value: 6
 @field [parent=#wxAuiDockUIPart] typeBackground
]]

--[[-----------------------------------------------------------------------------
 
 value: 4
 @field [parent=#wxAuiDockUIPart] typePane
]]

--[[-----------------------------------------------------------------------------
 
 value: 1
 @field [parent=#wxAuiDockUIPart] typeGripper
]]

--[[-----------------------------------------------------------------------------
 
 value: 2
 @field [parent=#wxAuiDockUIPart] typeDock
]]

--[[-----------------------------------------------------------------------------
 
 value: 7
 @field [parent=#wxAuiDockUIPart] typePaneBorder
]]

--[[-----------------------------------------------------------------------------
 
 value: 0
 @field [parent=#wxAuiDockUIPart] typeCaption
]]

--[[-----------------------------------------------------------------------------
 
 value: 3
 @field [parent=#wxAuiDockUIPart] typeDockSizer
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiNotebookPageArray 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookPageArray] Clear
 @param #wxAuiNotebookPageArray arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookPageArray] delete
 @param #wxAuiNotebookPageArray arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookPageArray] Insert
 @param #wxAuiNotebookPageArray arg1 
 @param #wxAuiNotebookPage arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookPageArray] IsEmpty
 @param #wxAuiNotebookPageArray arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookPageArray] Item
 @param #wxAuiNotebookPageArray arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookPageArray] wxAuiNotebookPageArray
 @param #wxAuiNotebookPageArray arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookPageArray] wxAuiNotebookPageArray__2
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookPageArray] GetCount
 @param #wxAuiNotebookPageArray arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookPageArray] RemoveAt
 @param #wxAuiNotebookPageArray arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookPageArray] Add
 @param #wxAuiNotebookPageArray arg1 
 @param #wxAuiNotebookPage arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiManagerEvent 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManagerEvent] Veto
 @param #wxAuiManagerEvent arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManagerEvent] GetManager
 @param #wxAuiManagerEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManagerEvent] wxAuiManagerEvent
 @param #wxAuiManagerEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManagerEvent] wxAuiManagerEvent__2
 @param #number arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManagerEvent] SetButton
 @param #wxAuiManagerEvent arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManagerEvent] SetDC
 @param #wxAuiManagerEvent arg1 
 @param #wxDC arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManagerEvent] CanVeto
 @param #wxAuiManagerEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManagerEvent] delete
 @param #wxAuiManagerEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManagerEvent] GetButton
 @param #wxAuiManagerEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManagerEvent] SetCanVeto
 @param #wxAuiManagerEvent arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManagerEvent] SetPane
 @param #wxAuiManagerEvent arg1 
 @param #wxAuiPaneInfo arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManagerEvent] SetManager
 @param #wxAuiManagerEvent arg1 
 @param #wxAuiManager arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManagerEvent] GetDC
 @param #wxAuiManagerEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManagerEvent] GetPane
 @param #wxAuiManagerEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManagerEvent] GetVeto
 @param #wxAuiManagerEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiMDIChildFrame 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] Destroy
 @param #wxAuiMDIChildFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] Activate
 @param #wxAuiMDIChildFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] SetMDIParentFrame
 @param #wxAuiMDIChildFrame arg1 
 @param #wxAuiMDIParentFrame arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] GetIcons
 @param #wxAuiMDIChildFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] wxAuiMDIChildFrame
 @param #wxAuiMDIParentFrame arg1 
 @param #number arg2 
 @param #string arg3 
 @param #wxPoint arg4 
 @param #wxSize arg5 
 @param #number arg6 
 @param #string arg7 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] wxAuiMDIChildFrame__2
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] SetTitle
 @param #wxAuiMDIChildFrame arg1 
 @param #string arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] Create
 @param #wxAuiMDIChildFrame arg1 
 @param #wxAuiMDIParentFrame arg2 
 @param #number arg3 
 @param #string arg4 
 @param #wxPoint arg5 
 @param #wxSize arg6 
 @param #number arg7 
 @param #string arg8 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] SetIcons
 @param #wxAuiMDIChildFrame arg1 
 @param #wxIconBundle arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] DoShow
 @param #wxAuiMDIChildFrame arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] SetMenuBar
 @param #wxAuiMDIChildFrame arg1 
 @param #wxMenuBar arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] GetMenuBar
 @param #wxAuiMDIChildFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] ApplyMDIChildFrameRect
 @param #wxAuiMDIChildFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] SetIcon
 @param #wxAuiMDIChildFrame arg1 
 @param #wxIcon arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] GetTitle
 @param #wxAuiMDIChildFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] GetIcon
 @param #wxAuiMDIChildFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIChildFrame] GetMDIParentFrame
 @param #wxAuiMDIChildFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiFloatingFrame 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiFloatingFrame] SetPaneWindow
 @param #wxAuiFloatingFrame arg1 
 @param #wxAuiPaneInfo arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiFloatingFrame] wxAuiFloatingFrame
 @param #wxWindow arg1 
 @param #wxAuiManager arg2 
 @param #wxAuiPaneInfo arg3 
 @param #number arg4 
 @param #number arg5 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiFloatingFrame] GetOwnerManager
 @param #wxAuiFloatingFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiDockInfo 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] dock_layer
 @param #wxAuiDockInfo arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] delete
 @param #wxAuiDockInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] wxAuiDockInfo
 @param #wxAuiDockInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] wxAuiDockInfo__2
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] reserved1
 @param #wxAuiDockInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] toolbar
 @param #wxAuiDockInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] dock_row
 @param #wxAuiDockInfo arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] resizable
 @param #wxAuiDockInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] rect
 @param #wxAuiDockInfo arg1 
 @param #wxRect arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] dock_direction
 @param #wxAuiDockInfo arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] IsVertical
 @param #wxAuiDockInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] op_set
 @param #wxAuiDockInfo arg1 
 @param #wxAuiDockInfo arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] IsOk
 @param #wxAuiDockInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] min_size
 @param #wxAuiDockInfo arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] IsHorizontal
 @param #wxAuiDockInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] fixed
 @param #wxAuiDockInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockInfo] size
 @param #wxAuiDockInfo arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiDefaultTabArt 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDefaultTabArt] wxAuiDefaultTabArt
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDefaultTabArt] delete
 @param #wxAuiDefaultTabArt arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiMDIClientWindow 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIClientWindow] SetSelection
 @param #wxAuiMDIClientWindow arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIClientWindow] wxAuiMDIClientWindow
 @param #wxAuiMDIParentFrame arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIClientWindow] wxAuiMDIClientWindow__2
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIClientWindow] CreateClient
 @param #wxAuiMDIClientWindow arg1 
 @param #wxAuiMDIParentFrame arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiPaneButton 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneButton] delete
 @param #wxAuiPaneButton arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneButton] button_id
 @param #wxAuiPaneButton arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiTabArt 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabArt] DrawBackground
 @param #wxAuiTabArt arg1 
 @param #wxDC arg2 
 @param #wxWindow arg3 
 @param #wxRect arg4 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabArt] delete
 @param #wxAuiTabArt arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabArt] ShowDropDown
 @param #wxAuiTabArt arg1 
 @param #wxWindow arg2 
 @param #wxAuiNotebookPageArray arg3 
 @param #number arg4 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabArt] SetSelectedFont
 @param #wxAuiTabArt arg1 
 @param #wxFont arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabArt] SetSizingInfo
 @param #wxAuiTabArt arg1 
 @param #wxSize arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabArt] SetNormalFont
 @param #wxAuiTabArt arg1 
 @param #wxFont arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabArt] DrawTab
 @param #wxAuiTabArt arg1 
 @param #wxDC arg2 
 @param #wxWindow arg3 
 @param #wxAuiNotebookPage arg4 
 @param #wxRect arg5 
 @param #number arg6 
 @param #wxRect arg7 
 @param #wxRect arg8 
 @param #lightuserdata arg9 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabArt] GetBestTabCtrlSize
 @param #wxAuiTabArt arg1 
 @param #wxWindow arg2 
 @param #wxAuiNotebookPageArray arg3 
 @param #wxSize arg4 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabArt] Clone
 @param #wxAuiTabArt arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabArt] DrawButton
 @param #wxAuiTabArt arg1 
 @param #wxDC arg2 
 @param #wxWindow arg3 
 @param #wxRect arg4 
 @param #number arg5 
 @param #number arg6 
 @param #number arg7 
 @param #wxRect arg8 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabArt] SetMeasuringFont
 @param #wxAuiTabArt arg1 
 @param #wxFont arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabArt] SetFlags
 @param #wxAuiTabArt arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabArt] GetTabSize
 @param #wxAuiTabArt arg1 
 @param #wxDC arg2 
 @param #wxWindow arg3 
 @param #string arg4 
 @param #wxBitmap arg5 
 @param #boolean arg6 
 @param #number arg7 
 @param #lightuserdata arg8 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabArt] GetIndentSize
 @param #wxAuiTabArt arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiDockArt 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockArt] DrawBackground
 @param #wxAuiDockArt arg1 
 @param #wxDC arg2 
 @param #wxWindow arg3 
 @param #number arg4 
 @param #wxRect arg5 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockArt] GetMetric
 @param #wxAuiDockArt arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockArt] SetColour
 @param #wxAuiDockArt arg1 
 @param #number arg2 
 @param #wxColour arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockArt] DrawBorder
 @param #wxAuiDockArt arg1 
 @param #wxDC arg2 
 @param #wxWindow arg3 
 @param #wxRect arg4 
 @param #wxAuiPaneInfo arg5 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockArt] DrawPaneButton
 @param #wxAuiDockArt arg1 
 @param #wxDC arg2 
 @param #wxWindow arg3 
 @param #number arg4 
 @param #number arg5 
 @param #wxRect arg6 
 @param #wxAuiPaneInfo arg7 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockArt] delete
 @param #wxAuiDockArt arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockArt] GetColour
 @param #wxAuiDockArt arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockArt] DrawCaption
 @param #wxAuiDockArt arg1 
 @param #wxDC arg2 
 @param #wxWindow arg3 
 @param #string arg4 
 @param #wxRect arg5 
 @param #wxAuiPaneInfo arg6 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockArt] DrawSash
 @param #wxAuiDockArt arg1 
 @param #wxDC arg2 
 @param #wxWindow arg3 
 @param #number arg4 
 @param #wxRect arg5 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockArt] SetMetric
 @param #wxAuiDockArt arg1 
 @param #number arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockArt] GetColor
 @param #wxAuiDockArt arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockArt] SetFont
 @param #wxAuiDockArt arg1 
 @param #number arg2 
 @param #wxFont arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockArt] GetFont
 @param #wxAuiDockArt arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockArt] DrawGripper
 @param #wxAuiDockArt arg1 
 @param #wxDC arg2 
 @param #wxWindow arg3 
 @param #wxRect arg4 
 @param #wxAuiPaneInfo arg5 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDockArt] SetColor
 @param #wxAuiDockArt arg1 
 @param #number arg2 
 @param #wxColour arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiTabCtrl 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] SetMeasuringFont
 @param #wxAuiTabCtrl arg1 
 @param #wxFont arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] SetRect
 @param #wxAuiTabCtrl arg1 
 @param #wxRect arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] GetIdxFromWindow
 @param #wxAuiTabCtrl arg1 
 @param #wxWindow arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] RemovePage
 @param #wxAuiTabCtrl arg1 
 @param #wxWindow arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] TabHitTest
 @param #wxAuiTabCtrl arg1 
 @param #number arg2 
 @param #number arg3 
 @param #wxWindow arg4 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] IsTabVisible
 @param #wxAuiTabCtrl arg1 
 @param #number arg2 
 @param #number arg3 
 @param #wxDC arg4 
 @param #wxWindow arg5 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] SetTabOffset
 @param #wxAuiTabCtrl arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] GetTabOffset
 @param #wxAuiTabCtrl arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] GetFlags
 @param #wxAuiTabCtrl arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] MovePage
 @param #wxAuiTabCtrl arg1 
 @param #wxWindow arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] SetSelectedFont
 @param #wxAuiTabCtrl arg1 
 @param #wxFont arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] MakeTabVisible
 @param #wxAuiTabCtrl arg1 
 @param #number arg2 
 @param #wxWindow arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] wxAuiTabCtrl
 @param #wxWindow arg1 
 @param #number arg2 
 @param #wxPoint arg3 
 @param #wxSize arg4 
 @param #number arg5 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] SetArtProvider
 @param #wxAuiTabCtrl arg1 
 @param #wxAuiTabArt arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] DoShowHide
 @param #wxAuiTabCtrl arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] GetArtProvider
 @param #wxAuiTabCtrl arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] GetPageCount
 @param #wxAuiTabCtrl arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] GetPages
 @param #wxAuiTabCtrl arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] GetActivePage
 @param #wxAuiTabCtrl arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] GetPage
 @param #wxAuiTabCtrl arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] GetPage__2
 @param #wxAuiTabCtrl arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] RemoveButton
 @param #wxAuiTabCtrl arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] InsertPage
 @param #wxAuiTabCtrl arg1 
 @param #wxWindow arg2 
 @param #wxAuiNotebookPage arg3 
 @param #number arg4 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] IsDragging
 @param #wxAuiTabCtrl arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] SetNormalFont
 @param #wxAuiTabCtrl arg1 
 @param #wxFont arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] SetActivePage
 @param #wxAuiTabCtrl arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] SetActivePage__2
 @param #wxAuiTabCtrl arg1 
 @param #wxWindow arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] ButtonHitTest
 @param #wxAuiTabCtrl arg1 
 @param #number arg2 
 @param #number arg3 
 @param #wxAuiTabContainerButton arg4 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] AddButton
 @param #wxAuiTabCtrl arg1 
 @param #number arg2 
 @param #number arg3 
 @param #wxBitmap arg4 
 @param #wxBitmap arg5 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] AddPage
 @param #wxAuiTabCtrl arg1 
 @param #wxWindow arg2 
 @param #wxAuiNotebookPage arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] SetFlags
 @param #wxAuiTabCtrl arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] SetNoneActive
 @param #wxAuiTabCtrl arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabCtrl] GetWindowFromIdx
 @param #wxAuiTabCtrl arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiTabContainerButton 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabContainerButton] bitmap
 @param #wxAuiTabContainerButton arg1 
 @param #wxBitmap arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabContainerButton] delete
 @param #wxAuiTabContainerButton arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabContainerButton] rect
 @param #wxAuiTabContainerButton arg1 
 @param #wxRect arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabContainerButton] dis_bitmap
 @param #wxAuiTabContainerButton arg1 
 @param #wxBitmap arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabContainerButton] location
 @param #wxAuiTabContainerButton arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabContainerButton] id
 @param #wxAuiTabContainerButton arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiTabContainerButton] cur_state
 @param #wxAuiTabContainerButton arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiPaneInfoArray 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfoArray] Clear
 @param #wxAuiPaneInfoArray arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfoArray] delete
 @param #wxAuiPaneInfoArray arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfoArray] Insert
 @param #wxAuiPaneInfoArray arg1 
 @param #wxAuiPaneInfo arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfoArray] IsEmpty
 @param #wxAuiPaneInfoArray arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfoArray] Item
 @param #wxAuiPaneInfoArray arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfoArray] GetCount
 @param #wxAuiPaneInfoArray arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfoArray] wxAuiPaneInfoArray
 @param #wxAuiPaneInfoArray arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfoArray] wxAuiPaneInfoArray__2
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfoArray] RemoveAt
 @param #wxAuiPaneInfoArray arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfoArray] Add
 @param #wxAuiPaneInfoArray arg1 
 @param #wxAuiPaneInfo arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiNotebook 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] SetMeasuringFont
 @param #wxAuiNotebook arg1 
 @param #wxFont arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] GetTabCtrlHeight
 @param #wxAuiNotebook arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] RemovePage
 @param #wxAuiNotebook arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] SetPageText
 @param #wxAuiNotebook arg1 
 @param #number arg2 
 @param #string arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] SetArtProvider
 @param #wxAuiNotebook arg1 
 @param #wxAuiTabArt arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] Split
 @param #wxAuiNotebook arg1 
 @param #number arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] SetSelection
 @param #wxAuiNotebook arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] GetPageText
 @param #wxAuiNotebook arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] SetWindowStyleFlag
 @param #wxAuiNotebook arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] SetUniformBitmapSize
 @param #wxAuiNotebook arg1 
 @param #wxSize arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] SetNormalFont
 @param #wxAuiNotebook arg1 
 @param #wxFont arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] GetHeightForPageHeight
 @param #wxAuiNotebook arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] ShowWindowMenu
 @param #wxAuiNotebook arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] SetSelectedFont
 @param #wxAuiNotebook arg1 
 @param #wxFont arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] GetArtProvider
 @param #wxAuiNotebook arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] GetPageCount
 @param #wxAuiNotebook arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] GetAuiManager
 @param #wxAuiNotebook arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] SetPageBitmap
 @param #wxAuiNotebook arg1 
 @param #number arg2 
 @param #wxBitmap arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] GetPage
 @param #wxAuiNotebook arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] SetFont
 @param #wxAuiNotebook arg1 
 @param #wxFont arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] Create
 @param #wxAuiNotebook arg1 
 @param #wxWindow arg2 
 @param #number arg3 
 @param #wxPoint arg4 
 @param #wxSize arg5 
 @param #number arg6 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] SetTabCtrlHeight
 @param #wxAuiNotebook arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] GetPageIndex
 @param #wxAuiNotebook arg1 
 @param #wxWindow arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] wxAuiNotebook
 @param #wxWindow arg1 
 @param #number arg2 
 @param #wxPoint arg3 
 @param #wxSize arg4 
 @param #number arg5 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] wxAuiNotebook__2
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] DeletePage
 @param #wxAuiNotebook arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] InsertPage
 @param #wxAuiNotebook arg1 
 @param #number arg2 
 @param #wxWindow arg3 
 @param #string arg4 
 @param #boolean arg5 
 @param #wxBitmap arg6 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] AddPage
 @param #wxAuiNotebook arg1 
 @param #wxWindow arg2 
 @param #string arg3 
 @param #boolean arg4 
 @param #wxBitmap arg5 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] GetSelection
 @param #wxAuiNotebook arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] AdvanceSelection
 @param #wxAuiNotebook arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebook] GetPageBitmap
 @param #wxAuiNotebook arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiManager 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] SetArtProvider
 @param #wxAuiManager arg1 
 @param #wxAuiDockArt arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] LoadPerspective
 @param #wxAuiManager arg1 
 @param #string arg2 
 @param #boolean arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] UnInit
 @param #wxAuiManager arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] DetachPane
 @param #wxAuiManager arg1 
 @param #wxWindow arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] OnPaneButton
 @param #wxAuiManager arg1 
 @param #wxAuiManagerEvent arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] GetArtProvider
 @param #wxAuiManager arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] GetAllPanes
 @param #wxAuiManager arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] wxAuiManager
 @param #wxWindow arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] SetFlags
 @param #wxAuiManager arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] GetPane
 @param #wxAuiManager arg1 
 @param #string arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] GetPane__2
 @param #wxAuiManager arg1 
 @param #wxWindow arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] RestorePane
 @param #wxAuiManager arg1 
 @param #wxAuiPaneInfo arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] GetManager
 @param #wxWindow arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] MaximizePane
 @param #wxAuiManager arg1 
 @param #wxAuiPaneInfo arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] RestoreMaximizedPane
 @param #wxAuiManager arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] Update
 @param #wxAuiManager arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] ClosePane
 @param #wxAuiManager arg1 
 @param #wxAuiPaneInfo arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] DrawHintRect
 @param #wxAuiManager arg1 
 @param #wxWindow arg2 
 @param #wxPoint arg3 
 @param #wxPoint arg4 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] CreateFloatingFrame
 @param #wxAuiManager arg1 
 @param #wxWindow arg2 
 @param #wxAuiPaneInfo arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] OnRender
 @param #wxAuiManager arg1 
 @param #wxAuiManagerEvent arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] StartPaneDrag
 @param #wxAuiManager arg1 
 @param #wxWindow arg2 
 @param #wxPoint arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] CalculateHintRect
 @param #wxAuiManager arg1 
 @param #wxWindow arg2 
 @param #wxPoint arg3 
 @param #wxPoint arg4 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] GetDockSizeConstraint
 @param #wxAuiManager arg1 
 @param #lightuserdata arg2 
 @param #lightuserdata arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] LoadPaneInfo
 @param #wxAuiManager arg1 
 @param #string arg2 
 @param #wxAuiPaneInfo arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] SavePerspective
 @param #wxAuiManager arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] InsertPane
 @param #wxAuiManager arg1 
 @param #wxWindow arg2 
 @param #wxAuiPaneInfo arg3 
 @param #number arg4 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] HideHint
 @param #wxAuiManager arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] ShowHint
 @param #wxAuiManager arg1 
 @param #wxRect arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] SavePaneInfo
 @param #wxAuiManager arg1 
 @param #wxAuiPaneInfo arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] GetFlags
 @param #wxAuiManager arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] GetManagedWindow
 @param #wxAuiManager arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] AddPane
 @param #wxAuiManager arg1 
 @param #wxWindow arg2 
 @param #number arg3 
 @param #string arg4 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] AddPane__2
 @param #wxAuiManager arg1 
 @param #wxWindow arg2 
 @param #wxAuiPaneInfo arg3 
 @param #wxPoint arg4 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] AddPane__3
 @param #wxAuiManager arg1 
 @param #wxWindow arg2 
 @param #wxAuiPaneInfo arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] SetManagedWindow
 @param #wxAuiManager arg1 
 @param #wxWindow arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiManager] SetDockSizeConstraint
 @param #wxAuiManager arg1 
 @param #number arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiNotebookPage 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookPage] bitmap
 @param #wxAuiNotebookPage arg1 
 @param #wxBitmap arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookPage] delete
 @param #wxAuiNotebookPage arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookPage] active
 @param #wxAuiNotebookPage arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookPage] caption
 @param #wxAuiNotebookPage arg1 
 @param #string arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookPage] window
 @param #wxAuiNotebookPage arg1 
 @param #wxWindow arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookPage] rect
 @param #wxAuiNotebookPage arg1 
 @param #wxRect arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiMDIParentFrame 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] ProcessEvent
 @param #wxAuiMDIParentFrame arg1 
 @param #wxEvent arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] SetArtProvider
 @param #wxAuiMDIParentFrame arg1 
 @param #wxAuiTabArt arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] SetMenuBar
 @param #wxAuiMDIParentFrame arg1 
 @param #wxMenuBar arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] SetWindowMenu
 @param #wxAuiMDIParentFrame arg1 
 @param #wxMenu arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] SetChildMenuBar
 @param #wxAuiMDIParentFrame arg1 
 @param #wxAuiMDIChildFrame arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] OnCreateClient
 @param #wxAuiMDIParentFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] SetActiveChild
 @param #wxAuiMDIParentFrame arg1 
 @param #wxAuiMDIChildFrame arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] GetArtProvider
 @param #wxAuiMDIParentFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] ArrangeIcons
 @param #wxAuiMDIParentFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] GetWindowMenu
 @param #wxAuiMDIParentFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] Cascade
 @param #wxAuiMDIParentFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] Create
 @param #wxAuiMDIParentFrame arg1 
 @param #wxWindow arg2 
 @param #number arg3 
 @param #string arg4 
 @param #wxPoint arg5 
 @param #wxSize arg6 
 @param #number arg7 
 @param #string arg8 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] GetClientWindow
 @param #wxAuiMDIParentFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] wxAuiMDIParentFrame
 @param #wxWindow arg1 
 @param #number arg2 
 @param #string arg3 
 @param #wxPoint arg4 
 @param #wxSize arg5 
 @param #number arg6 
 @param #string arg7 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] wxAuiMDIParentFrame__2
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] Tile
 @param #wxAuiMDIParentFrame arg1 
 @param #integer arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] ActivatePrevious
 @param #wxAuiMDIParentFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] GetActiveChild
 @param #wxAuiMDIParentFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] ActivateNext
 @param #wxAuiMDIParentFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiMDIParentFrame] GetNotebook
 @param #wxAuiMDIParentFrame arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiPaneInfo 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] IsMovable
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] IsFixed
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Floatable
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] BestSize
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] BestSize__2
 @param #wxAuiPaneInfo arg1 
 @param #wxSize arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] HasCaption
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] RightDockable
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] MinimizeButton
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Maximize
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Bottom
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] IsDestroyOnClose
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Layer
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] IsShown
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Show
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] dock_row
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] IsToolbar
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] IsFloatable
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] IsOk
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] IsResizable
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] CaptionVisible
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Movable
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] caption
 @param #wxAuiPaneInfo arg1 
 @param #string arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Fixed
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] FloatingPosition
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] FloatingPosition__2
 @param #wxAuiPaneInfo arg1 
 @param #wxPoint arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Dockable
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] delete
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Dock
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] IsMaximized
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] dock_pos
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Name
 @param #wxAuiPaneInfo arg1 
 @param #string arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Position
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] HasMinimizeButton
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] GripperTop
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Row
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] PinButton
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] LeftDockable
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Left
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] dock_direction
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Centre
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] HasMaximizeButton
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Caption
 @param #wxAuiPaneInfo arg1 
 @param #string arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] HasGripperTop
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] wxAuiPaneInfo
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] wxAuiPaneInfo__2
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Hide
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] best_size
 @param #wxAuiPaneInfo arg1 
 @param #wxSize arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] window
 @param #wxAuiPaneInfo arg1 
 @param #wxWindow arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] state
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] frame
 @param #wxAuiPaneInfo arg1 
 @param #wxFrame arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] op_set
 @param #wxAuiPaneInfo arg1 
 @param #wxAuiPaneInfo arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] dock_layer
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] HasPinButton
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] min_size
 @param #wxAuiPaneInfo arg1 
 @param #wxSize arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] max_size
 @param #wxAuiPaneInfo arg1 
 @param #wxSize arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] rect
 @param #wxAuiPaneInfo arg1 
 @param #wxRect arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] name
 @param #wxAuiPaneInfo arg1 
 @param #string arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] floating_pos
 @param #wxAuiPaneInfo arg1 
 @param #wxPoint arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] BottomDockable
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] MaximizeButton
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] dock_proportion
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] IsLeftDockable
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] IsFloating
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Direction
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] DefaultPane
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] floating_size
 @param #wxAuiPaneInfo arg1 
 @param #wxSize arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Window
 @param #wxAuiPaneInfo arg1 
 @param #wxWindow arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] HasCloseButton
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Right
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] IsBottomDockable
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Top
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] ToolbarPane
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Center
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] SetFlag
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
 @param #boolean arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] HasGripper
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] SafeSet
 @param #wxAuiPaneInfo arg1 
 @param #wxAuiPaneInfo arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] CentrePane
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Resizable
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] TopDockable
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] DestroyOnClose
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Gripper
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Restore
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] IsTopDockable
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] Float
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] IsDocked
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] MinSize
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] MinSize__2
 @param #wxAuiPaneInfo arg1 
 @param #wxSize arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] MaxSize
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] MaxSize__2
 @param #wxAuiPaneInfo arg1 
 @param #wxSize arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] CloseButton
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] CenterPane
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] PaneBorder
 @param #wxAuiPaneInfo arg1 
 @param #boolean arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] IsRightDockable
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] FloatingSize
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
 @param #number arg3 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] FloatingSize__2
 @param #wxAuiPaneInfo arg1 
 @param #wxSize arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] HasBorder
 @param #wxAuiPaneInfo arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiPaneInfo] HasFlag
 @param #wxAuiPaneInfo arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 value: 8388608
 @field [parent=#wxAuiPaneInfo] buttonMinimize
]]

--[[-----------------------------------------------------------------------------
 
 value: 16
 @field [parent=#wxAuiPaneInfo] optionTopDockable
]]

--[[-----------------------------------------------------------------------------
 
 value: 32
 @field [parent=#wxAuiPaneInfo] optionBottomDockable
]]

--[[-----------------------------------------------------------------------------
 
 value: 67108864
 @field [parent=#wxAuiPaneInfo] buttonCustom1
]]

--[[-----------------------------------------------------------------------------
 
 value: 1073741824
 @field [parent=#wxAuiPaneInfo] savedHiddenState
]]

--[[-----------------------------------------------------------------------------
 
 value: 2048
 @field [parent=#wxAuiPaneInfo] optionGripper
]]

--[[-----------------------------------------------------------------------------
 
 value: 64
 @field [parent=#wxAuiPaneInfo] optionFloatable
]]

--[[-----------------------------------------------------------------------------
 
 value: 256
 @field [parent=#wxAuiPaneInfo] optionResizable
]]

--[[-----------------------------------------------------------------------------
 
 value: 134217728
 @field [parent=#wxAuiPaneInfo] buttonCustom2
]]

--[[-----------------------------------------------------------------------------
 
 value: 8
 @field [parent=#wxAuiPaneInfo] optionRightDockable
]]

--[[-----------------------------------------------------------------------------
 
 value: 16384
 @field [parent=#wxAuiPaneInfo] optionActive
]]

--[[-----------------------------------------------------------------------------
 
 value: 512
 @field [parent=#wxAuiPaneInfo] optionPaneBorder
]]

--[[-----------------------------------------------------------------------------
 
 value: 1
 @field [parent=#wxAuiPaneInfo] optionFloating
]]

--[[-----------------------------------------------------------------------------
 
 value: 4096
 @field [parent=#wxAuiPaneInfo] optionDestroyOnClose
]]

--[[-----------------------------------------------------------------------------
 
 value: 4194304
 @field [parent=#wxAuiPaneInfo] buttonMaximize
]]

--[[-----------------------------------------------------------------------------
 
 value: 2
 @field [parent=#wxAuiPaneInfo] optionHidden
]]

--[[-----------------------------------------------------------------------------
 
 value: 65536
 @field [parent=#wxAuiPaneInfo] optionMaximized
]]

--[[-----------------------------------------------------------------------------
 
 value: 128
 @field [parent=#wxAuiPaneInfo] optionMovable
]]

--[[-----------------------------------------------------------------------------
 
 value: 8192
 @field [parent=#wxAuiPaneInfo] optionToolbar
]]

--[[-----------------------------------------------------------------------------
 
 value: 16777216
 @field [parent=#wxAuiPaneInfo] buttonPin
]]

--[[-----------------------------------------------------------------------------
 
 value: 32768
 @field [parent=#wxAuiPaneInfo] optionGripperTop
]]

--[[-----------------------------------------------------------------------------
 
 value: 1024
 @field [parent=#wxAuiPaneInfo] optionCaption
]]

--[[-----------------------------------------------------------------------------
 
 value: 268435456
 @field [parent=#wxAuiPaneInfo] buttonCustom3
]]

--[[-----------------------------------------------------------------------------
 
 value: -2147483648
 @field [parent=#wxAuiPaneInfo] actionPane
]]

--[[-----------------------------------------------------------------------------
 
 value: 4
 @field [parent=#wxAuiPaneInfo] optionLeftDockable
]]

--[[-----------------------------------------------------------------------------
 
 value: 2097152
 @field [parent=#wxAuiPaneInfo] buttonClose
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiNotebookEvent 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookEvent] wxAuiNotebookEvent
 @param #wxAuiNotebookEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookEvent] wxAuiNotebookEvent__2
 @param #number arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookEvent] SetSelection
 @param #wxAuiNotebookEvent arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookEvent] GetDragSource
 @param #wxAuiNotebookEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookEvent] GetOldSelection
 @param #wxAuiNotebookEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookEvent] delete
 @param #wxAuiNotebookEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookEvent] GetSelection
 @param #wxAuiNotebookEvent arg1 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookEvent] SetDragSource
 @param #wxAuiNotebookEvent arg1 
 @param #wxAuiNotebook arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiNotebookEvent] SetOldSelection
 @param #wxAuiNotebookEvent arg1 
 @param #number arg2 
]]

--[[-----------------------------------------------------------------------------
 
 
 @type [parent=#wxaui] #wxAuiDefaultDockArt 
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDefaultDockArt] wxAuiDefaultDockArt
]]

--[[-----------------------------------------------------------------------------
 
 
 @function [parent=#wxAuiDefaultDockArt] delete
 @param #wxAuiDefaultDockArt arg1 
]]

--[[-----------------------------------------------------------------------------
 
 value: 203
 @field [parent=#wxaui] wxAUI_BUTTON_CUSTOM3
]]

--[[-----------------------------------------------------------------------------
 
 value: 3
 @field [parent=#wxaui] wxAUI_DOCK_BOTTOM
]]

--[[-----------------------------------------------------------------------------
 
 value: 3
 @field [parent=#wxaui] wxAUI_DOCKART_PANE_BORDER_SIZE
]]

--[[-----------------------------------------------------------------------------
 
 value: 8192
 @field [parent=#wxaui] wxAUI_NB_MIDDLE_CLICK_CLOSE
]]

--[[-----------------------------------------------------------------------------
 
 value: 2
 @field [parent=#wxaui] wxAUI_DOCKART_GRIPPER_SIZE
]]

--[[-----------------------------------------------------------------------------
 
 value: 7
 @field [parent=#wxaui] wxAUI_DOCKART_ACTIVE_CAPTION_COLOUR
]]

--[[-----------------------------------------------------------------------------
 
 value: 14
 @field [parent=#wxaui] wxAUI_DOCKART_GRIPPER_COLOUR
]]

--[[-----------------------------------------------------------------------------
 
 value: 4
 @field [parent=#wxaui] wxAUI_MGR_TRANSPARENT_DRAG
]]

--[[-----------------------------------------------------------------------------
 
 value: 105
 @field [parent=#wxaui] wxAUI_BUTTON_OPTIONS
]]

--[[-----------------------------------------------------------------------------
 
 value: 1
 @field [parent=#wxaui] wxAUI_MGR_ALLOW_FLOATING
]]

--[[-----------------------------------------------------------------------------
 
 value: 8
 @field [parent=#wxaui] wxAUI_NB_BOTTOM
]]

--[[-----------------------------------------------------------------------------
 
 value: 512
 @field [parent=#wxaui] wxAUI_NB_WINDOWLIST_BUTTON
]]

--[[-----------------------------------------------------------------------------
 
 value: 8
 @field [parent=#wxaui] wxAUI_DOCKART_ACTIVE_CAPTION_GRADIENT_COLOUR
]]

--[[-----------------------------------------------------------------------------
 
 value: 12
 @field [parent=#wxaui] wxAUI_DOCKART_INACTIVE_CAPTION_TEXT_COLOUR
]]

--[[-----------------------------------------------------------------------------
 
 value: 2
 @field [parent=#wxaui] wxAUI_BUTTON_STATE_HOVER
]]

--[[-----------------------------------------------------------------------------
 
 value: 106
 @field [parent=#wxaui] wxAUI_BUTTON_WINDOWLIST
]]

--[[-----------------------------------------------------------------------------
 
 value: 8
 @field [parent=#wxaui] wxAUI_MGR_TRANSPARENT_HINT
]]

--[[-----------------------------------------------------------------------------
 
 value: 4
 @field [parent=#wxaui] wxAUI_DOCKART_PANE_BUTTON_SIZE
]]

--[[-----------------------------------------------------------------------------
 
 value: 11
 @field [parent=#wxaui] wxAUI_DOCKART_ACTIVE_CAPTION_TEXT_COLOUR
]]

--[[-----------------------------------------------------------------------------
 
 value: 2
 @field [parent=#wxaui] wxAUI_DOCK_RIGHT
]]

--[[-----------------------------------------------------------------------------
 
 value: 5
 @field [parent=#wxaui] wxAUI_DOCKART_BACKGROUND_COLOUR
]]

--[[-----------------------------------------------------------------------------
 
 value: 5
 @field [parent=#wxaui] wxAUI_DOCK_CENTRE
]]

--[[-----------------------------------------------------------------------------
 
 value: 128
 @field [parent=#wxaui] wxAUI_MGR_NO_VENETIAN_BLINDS_FADE
]]

--[[-----------------------------------------------------------------------------
 
 value: 32
 @field [parent=#wxaui] wxAUI_MGR_RECTANGLE_HINT
]]

--[[-----------------------------------------------------------------------------
 
 value: 102
 @field [parent=#wxaui] wxAUI_BUTTON_MAXIMIZE_RESTORE
]]

--[[-----------------------------------------------------------------------------
 
 value: 16
 @field [parent=#wxaui] wxAUI_DOCKART_GRADIENT_TYPE
]]

--[[-----------------------------------------------------------------------------
 
 value: 4
 @field [parent=#wxaui] wxAUI_BUTTON_STATE_PRESSED
]]

--[[-----------------------------------------------------------------------------
 
 value: 110
 @field [parent=#wxaui] wxAUI_BUTTON_DOWN
]]

--[[-----------------------------------------------------------------------------
 
 value: 201
 @field [parent=#wxaui] wxAUI_BUTTON_CUSTOM1
]]

--[[-----------------------------------------------------------------------------
 
 value: 1
 @field [parent=#wxaui] wxAUI_DOCK_TOP
]]

--[[-----------------------------------------------------------------------------
 
 value: 201
 @field [parent=#wxaui] wxAUI_MGR_DEFAULT
]]

--[[-----------------------------------------------------------------------------
 
 value: 104
 @field [parent=#wxaui] wxAUI_BUTTON_PIN
]]

--[[-----------------------------------------------------------------------------
 
 value: 101
 @field [parent=#wxaui] wxAUI_BUTTON_CLOSE
]]

--[[-----------------------------------------------------------------------------
 
 value: 13
 @field [parent=#wxaui] wxAUI_DOCKART_BORDER_COLOUR
]]

--[[-----------------------------------------------------------------------------
 
 value: 64
 @field [parent=#wxaui] wxAUI_MGR_HINT_FADE
]]

--[[-----------------------------------------------------------------------------
 
 value: 1
 @field [parent=#wxaui] wxAUI_DOCKART_CAPTION_SIZE
]]

--[[-----------------------------------------------------------------------------
 
 value: 32
 @field [parent=#wxaui] wxAUI_NB_TAB_MOVE
]]

--[[-----------------------------------------------------------------------------
 
 value: 8
 @field [parent=#wxaui] wxAUI_BUTTON_STATE_DISABLED
]]

--[[-----------------------------------------------------------------------------
 
 value: 202
 @field [parent=#wxaui] wxAUI_BUTTON_CUSTOM2
]]

--[[-----------------------------------------------------------------------------
 
 value: 10
 @field [parent=#wxaui] wxAUI_DOCKART_INACTIVE_CAPTION_GRADIENT_COLOUR
]]

--[[-----------------------------------------------------------------------------
 
 value: 2048
 @field [parent=#wxaui] wxAUI_NB_CLOSE_ON_ACTIVE_TAB
]]

--[[-----------------------------------------------------------------------------
 
 value: 1024
 @field [parent=#wxaui] wxAUI_NB_CLOSE_BUTTON
]]

--[[-----------------------------------------------------------------------------
 
 value: 32
 @field [parent=#wxaui] wxAUI_BUTTON_STATE_CHECKED
]]

--[[-----------------------------------------------------------------------------
 
 value: 256
 @field [parent=#wxaui] wxAUI_NB_SCROLL_BUTTONS
]]

--[[-----------------------------------------------------------------------------
 
 value: 10545
 @field [parent=#wxaui] wxAUI_NB_DEFAULT_STYLE
]]

--[[-----------------------------------------------------------------------------
 
 value: 1
 @field [parent=#wxaui] wxAUI_GRADIENT_VERTICAL
]]

--[[-----------------------------------------------------------------------------
 
 value: 108
 @field [parent=#wxaui] wxAUI_BUTTON_RIGHT
]]

--[[-----------------------------------------------------------------------------
 
 value: 1
 @field [parent=#wxaui] wxAUI_NB_TOP
]]

--[[-----------------------------------------------------------------------------
 
 value: 16
 @field [parent=#wxaui] wxAUI_NB_TAB_SPLIT
]]

--[[-----------------------------------------------------------------------------
 
 value: 128
 @field [parent=#wxaui] wxAUI_NB_TAB_FIXED_WIDTH
]]

--[[-----------------------------------------------------------------------------
 
 value: 103
 @field [parent=#wxaui] wxAUI_BUTTON_MINIMIZE
]]

--[[-----------------------------------------------------------------------------
 
 value: 4
 @field [parent=#wxaui] wxAUI_DOCK_LEFT
]]

--[[-----------------------------------------------------------------------------
 
 value: 4096
 @field [parent=#wxaui] wxAUI_NB_CLOSE_ON_ALL_TABS
]]

--[[-----------------------------------------------------------------------------
 
 value: 9
 @field [parent=#wxaui] wxAUI_DOCKART_INACTIVE_CAPTION_COLOUR
]]

--[[-----------------------------------------------------------------------------
 
 value: 16
 @field [parent=#wxaui] wxAUI_BUTTON_STATE_HIDDEN
]]

--[[-----------------------------------------------------------------------------
 
 value: 0
 @field [parent=#wxaui] wxAUI_INSERT_PANE
]]

--[[-----------------------------------------------------------------------------
 
 value: 15
 @field [parent=#wxaui] wxAUI_DOCKART_CAPTION_FONT
]]

--[[-----------------------------------------------------------------------------
 
 value: 16
 @field [parent=#wxaui] wxAUI_MGR_VENETIAN_BLINDS_HINT
]]

--[[-----------------------------------------------------------------------------
 
 value: 2
 @field [parent=#wxaui] wxAUI_INSERT_DOCK
]]

--[[-----------------------------------------------------------------------------
 
 value: 2
 @field [parent=#wxaui] wxAUI_NB_LEFT
]]

--[[-----------------------------------------------------------------------------
 
 value: 109
 @field [parent=#wxaui] wxAUI_BUTTON_UP
]]

--[[-----------------------------------------------------------------------------
 
 value: 1
 @field [parent=#wxaui] wxAUI_INSERT_ROW
]]

--[[-----------------------------------------------------------------------------
 
 value: 2
 @field [parent=#wxaui] wxAUI_GRADIENT_HORIZONTAL
]]

--[[-----------------------------------------------------------------------------
 
 value: 6
 @field [parent=#wxaui] wxAUI_DOCKART_SASH_COLOUR
]]

--[[-----------------------------------------------------------------------------
 
 value: 0
 @field [parent=#wxaui] wxAUI_DOCK_NONE
]]

--[[-----------------------------------------------------------------------------
 
 value: 0
 @field [parent=#wxaui] wxAUI_DOCKART_SASH_SIZE
]]

--[[-----------------------------------------------------------------------------
 
 value: 0
 @field [parent=#wxaui] wxAUI_GRADIENT_NONE
]]

--[[-----------------------------------------------------------------------------
 
 value: 5
 @field [parent=#wxaui] wxAUI_DOCK_CENTER
]]

--[[-----------------------------------------------------------------------------
 
 value: 64
 @field [parent=#wxaui] wxAUI_NB_TAB_EXTERNAL_MOVE
]]

--[[-----------------------------------------------------------------------------
 
 value: 2
 @field [parent=#wxaui] wxAUI_MGR_ALLOW_ACTIVE_PANE
]]

--[[-----------------------------------------------------------------------------
 
 value: 4
 @field [parent=#wxaui] wxAUI_NB_RIGHT
]]

--[[-----------------------------------------------------------------------------
 
 value: 107
 @field [parent=#wxaui] wxAUI_BUTTON_LEFT
]]

--[[-----------------------------------------------------------------------------
 
 value: 0
 @field [parent=#wxaui] wxAUI_BUTTON_STATE_NORMAL
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiNotebookEvent(10269) 
 @field [parent=#wxaui] wxEVT_COMMAND_AUINOTEBOOK_PAGE_CHANGING
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiNotebookEvent(10271) 
 @field [parent=#wxaui] wxEVT_COMMAND_AUINOTEBOOK_BUTTON
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiNotebookEvent(10276) 
 @field [parent=#wxaui] wxEVT_COMMAND_AUINOTEBOOK_BG_DCLICK
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiManagerEvent(10263) 
 @field [parent=#wxaui] wxEVT_AUI_PANE_MAXIMIZE
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiNotebookEvent(10267) 
 @field [parent=#wxaui] wxEVT_COMMAND_AUINOTEBOOK_PAGE_CLOSE
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiManagerEvent(10262) 
 @field [parent=#wxaui] wxEVT_AUI_PANE_CLOSE
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiNotebookEvent(10268) 
 @field [parent=#wxaui] wxEVT_COMMAND_AUINOTEBOOK_PAGE_CLOSED
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiNotebookEvent(10270) 
 @field [parent=#wxaui] wxEVT_COMMAND_AUINOTEBOOK_PAGE_CHANGED
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiNotebookEvent(10273) 
 @field [parent=#wxaui] wxEVT_COMMAND_AUINOTEBOOK_END_DRAG
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiManagerEvent(10266) 
 @field [parent=#wxaui] wxEVT_AUI_FIND_MANAGER
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiManagerEvent(10264) 
 @field [parent=#wxaui] wxEVT_AUI_PANE_RESTORE
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiNotebookEvent(10277) 
 @field [parent=#wxaui] wxEVT_COMMAND_AUINOTEBOOK_DRAG_DONE
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiNotebookEvent(10274) 
 @field [parent=#wxaui] wxEVT_COMMAND_AUINOTEBOOK_DRAG_MOTION
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiNotebookEvent(10275) 
 @field [parent=#wxaui] wxEVT_COMMAND_AUINOTEBOOK_ALLOW_DND
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiManagerEvent(10261) 
 @field [parent=#wxaui] wxEVT_AUI_PANE_BUTTON
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiNotebookEvent(10272) 
 @field [parent=#wxaui] wxEVT_COMMAND_AUINOTEBOOK_BEGIN_DRAG
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiNotebookEvent(10278) 
 @field [parent=#wxaui] wxEVT_COMMAND_AUINOTEBOOK_TAB_MIDDLE_UP
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiNotebookEvent(10281) 
 @field [parent=#wxaui] wxEVT_COMMAND_AUINOTEBOOK_TAB_RIGHT_DOWN
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiManagerEvent(10265) 
 @field [parent=#wxaui] wxEVT_AUI_RENDER
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiNotebookEvent(10280) 
 @field [parent=#wxaui] wxEVT_COMMAND_AUINOTEBOOK_TAB_RIGHT_UP
]]

--[[-----------------------------------------------------------------------------
 
 event: wxAuiNotebookEvent(10279) 
 @field [parent=#wxaui] wxEVT_COMMAND_AUINOTEBOOK_TAB_MIDDLE_DOWN
]]

--[[-----------------------------------------------------------------------------
 
 type: wxAuiDockInfo 
 @field [parent=#wxaui] wxAuiNullDockInfo
]]

--[[-----------------------------------------------------------------------------
 
 type: wxAuiPaneInfo 
 @field [parent=#wxaui] wxAuiNullPaneInfo
]]

return nil
