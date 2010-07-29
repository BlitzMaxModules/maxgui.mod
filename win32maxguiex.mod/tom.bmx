' tom.bmx

Import pub.win32

Strict

Const TOMTRUE = -1
Const TOMFALSE = 0
Const TOMNONE = 0
Const TOMSINGLE = 1
Const TOMWORDS = 2
Const TOMDOUBLE = 3
Const TOMDOTTED = 4

Extern "win32"

Type IRichEditOLE Extends IUnknown
	Method GetClientSite()' (THIS_ LPOLECLIENTSITE FAR * lplpolesite) PURE;
	Method GetObjectCount()' (THIS) PURE;
	Method GetLinkCount()' (THIS) PURE;
	Method GetObject()' (THIS_ Long iob, REOBJECT FAR * lpreobject,			  DWORD dwFlags) PURE;
	Method InsertObject()' (THIS_ REOBJECT FAR * lpreobject) PURE;
	Method ConvertObject()' (THIS_ Long iob, REFCLSID rclsidNew,  LPCSTR lpstrUserTypeNew) PURE;
	Method ActivateAs()' (THIS_ REFCLSID rclsid, REFCLSID rclsidAs) PURE;
	Method SetHostNames()' (THIS_ LPCSTR lpstrContainerApp, LPCSTR lpstrContainerObj) PURE;
	Method SetLinkAvailable()' (THIS_ Long iob, BOOL fAvailable) PURE;
	Method SetDvaspect()' (THIS_ Long iob, DWORD dvaspect) PURE;
	Method HandsOffStorage()' (THIS_ Long iob) PURE;
	Method SaveCompleted()' (THIS_ Long iob, LPSTORAGE lpstg) PURE;
	Method InPlaceDeactivate()' (THIS) PURE;
	Method ContextSensitiveHelp()' (THIS_ BOOL fEnterMode) PURE;
	Method GetClipboardData()' (THIS_ CHARRANGE FAR * lpchrg, DWORD reco,LPDATAOBJECT FAR * lplpdataobj) PURE;
	Method ImportDataObject()' (THIS_ LPDATAOBJECT lpdataobj,CLIPFORMAT cf, HGLOBAL hMetaPict) PURE;
End Type

Const ITextDocument_UUID$="{8CC497C0-A1DF-11ce-8098-00AA0047BE5D}"

'"{00000000-0000-0000-C000-000000000046}"

Type ITextDocument Extends IDispatch
	Method GetName()
	Method GetSlection()
	Method GetStoryCount()
	Method GetStoryRanges()
	Method GetSaved()
	Method SetSaved()
	Method GetDefaultTabStop(Value# Var)
	Method SetDefaultTabStop(Value#)
	Method NewDocument()
	Method Open()
	Method Save()
	Method Freeze(count Var)
	Method UnFreeze(count Var)
	Method BeginEditCollection()
	Method EndEditCollection()
	Method Undo()
	Method Redo()
	Method Range(p0,p1,irange:ITextRange Var)
	Method RangeFromPoint()
End Type

Type ITextRange Extends IDispatch
	Method GetText(bstr:Short Ptr Ptr)
	Method SetText(bstr:Short Ptr)
	Method GetChar()
	Method SetChar()
	Method GetDuplicate(irange:ITextRange Var)
	Method GetFormattedText()
	Method SetFormattedText()
	Method GetStart()
	Method SetStart()
	Method GetEnd()
	Method SetEnd()
	Method GetFont(ifont:ITextFont Var)
	Method SetFont(ifont:ITextFont)
	Method GetPara()
	Method SetPara()
	Method GetStoryLength()
	Method GetStoryType()
	Method Collapse()
	Method Expand()
	Method GetIndex()
	Method SetIndex()
	Method SetRange(cp1,cp2)
	Method InRange()
	Method InStory()
	Method IsEqual()
	Method Select_()
	Method StartOf()
	Method EndOf()
	Method Move()
	Method MoveStart()
	Method MoveEnd()
	Method MoveWhile()
	Method MoveStartWhile()
	Method MoveEndWhile()
	Method MoveUntil()
	Method MoveStartUntil()
	Method MoveEndUntil()
	Method FindText()
	Method FindTextStart()
	Method FindTextEnd()
	Method Delete_()
	Method Cut()
	Method Copy()
	Method Paste()
	Method CanPaste()
	Method CanEdit(bool Var)
	Method ChangeCase()
	Method GetPoint()
	Method SetPoint()
	Method ScrollIntoView()
	Method GetEmbeddedObject()
EndType

Type ITextFont Extends IDispatch
	Method GetDuplicate(ifont:ITextFont Var)
	Method SetDuplicate()
	Method CanChange()
	Method IsEqual() 
	Method Reset()
	Method GetStyle(Value:Int Ptr)
	Method SetStyle(Value)
	Method GetAllCaps(Value:Int Ptr)
	Method SetAllCaps(Value)
	Method GetAnimation(Value:Int Ptr)
	Method SetAnimation(Value)
	Method GetBackColor(Value:Int Ptr)
	Method SetBackColor(Value)
	Method GetBold(Value:Int Ptr)
	Method SetBold(Value)
	Method GetEmboss(Value:Int Ptr)
	Method SetEmboss(Value)
	Method GetForeColor(Value:Int Ptr)
	Method SetForeColor(Value)
	Method GetHidden(Value:Int Ptr)
	Method SetHidden(Value)
	Method GetEngrave(Value:Int Ptr)
	Method SetEngrave(Value)
	Method GetItalic(Value:Int Ptr)
	Method SetItalic(Value)
	Method GetKerning(Value:Int Ptr)
	Method SetKerning(Value)
	Method GetLanguageID()
	Method SetLanguageID() 
	Method GetName()
	Method SetName()
	Method GetOutline(Value:Int Ptr)
	Method SetOutline(Value)
	Method GetPosition(Value:Int Ptr)
	Method SetPosition(Value)
	Method GetProtected(Value:Int Ptr)
	Method SetProtected(Value)
	Method GetShadow(Value:Int Ptr)
	Method SetShadow(Value)
	Method GetSize(Value:Int Ptr)
	Method SetSize(Value)
	Method GetSmallCaps(Value:Int Ptr)
	Method SetSmallCaps(Value)
	Method GetSpacing(Value:Int Ptr)
	Method SetSpacing(Value)
	Method GetStrikeThrough(Value:Int Ptr)
	Method SetStrikeThrough(Value)
	Method GetSubscript(Value:Int Ptr)
	Method SetSubscript(Value)
	Method GetSuperscript(Value:Int Ptr)
	Method SetSuperscript(Value) 
	Method GetUnderline(Value:Int Ptr)
	Method SetUnderline(Value)
	Method GetWeight(Value:Int Ptr)
	Method SetWeight(Value)
End Type

End Extern
