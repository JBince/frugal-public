// Autogenerated by Frugal Compiler (3.13.1)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING

package golang

import (
	"context"
	"fmt"

	"github.com/Workiva/frugal/lib/gopherjs/frugal"
	"github.com/Workiva/frugal/lib/gopherjs/thrift"
)

type FBaseFoo interface {
	BasePing(ctx frugal.FContext) (err error)
}

type FBaseFooClient struct {
	c       frugal.FClient
	methods map[string]*frugal.Method
}

func NewFBaseFooClient(provider *frugal.FServiceProvider, middleware ...frugal.ServiceMiddleware) *FBaseFooClient {
	methods := make(map[string]*frugal.Method)
	client := &FBaseFooClient{
		c:       frugal.NewFStandardClient(provider),
		methods: methods,
	}
	middleware = append(middleware, provider.GetMiddleware()...)
	methods["basePing"] = frugal.NewMethod(client, client.basePing, "basePing", middleware)
	return client
}

func (f *FBaseFooClient) Client_() frugal.FClient { return f.c }

func (f *FBaseFooClient) BasePing(ctx frugal.FContext) (err error) {
	ret := f.methods["basePing"].Invoke([]interface{}{ctx})
	if len(ret) != 1 {
		panic(fmt.Sprintf("Middleware returned %d arguments, expected 1", len(ret)))
	}
	if ret[0] != nil {
		err = ret[0].(error)
	}
	return err
}

func (f *FBaseFooClient) basePing(ctx frugal.FContext) (err error) {
	args := BaseFooBasePingArgs{}
	result := BaseFooBasePingResult{}
	err = f.Client_().Call(ctx, "basePing", &args, &result)
	if err != nil {
		return
	}
	return
}

type FBaseFooProcessor struct {
	*frugal.FBaseProcessor
}

func NewFBaseFooProcessor(handler FBaseFoo, middleware ...frugal.ServiceMiddleware) *FBaseFooProcessor {
	p := &FBaseFooProcessor{frugal.NewFBaseProcessor()}
	p.AddToProcessorMap("basePing", &basefooFBasePing{frugal.NewFBaseProcessorFunction(p.GetWriteMutex(), frugal.NewMethod(handler, handler.BasePing, "BasePing", middleware))})
	return p
}

type basefooFBasePing struct {
	*frugal.FBaseProcessorFunction
}

func (p *basefooFBasePing) Process(ctx frugal.FContext, iprot, oprot *frugal.FProtocol) error {
	realCtx := frugal.ToContext(ctx)
	args := BaseFooBasePingArgs{}
	err := args.Read(realCtx, iprot)
	iprot.ReadMessageEnd(realCtx)
	if err != nil {
		return p.SendError(ctx, oprot, frugal.APPLICATION_EXCEPTION_PROTOCOL_ERROR, "basePing", err.Error())
	}
	result := BaseFooBasePingResult{}
	ret := p.InvokeMethod([]interface{}{ctx})
	if len(ret) != 1 {
		panic(fmt.Sprintf("Middleware returned %d arguments, expected 1", len(ret)))
	}
	if ret[0] != nil {
		err = ret[0].(error)
	}
	if err != nil {
		if typedError, ok := err.(thrift.TApplicationException); ok {
			p.SendError(ctx, oprot, typedError.TypeId(), "basePing", typedError.Error())
			return nil
		}
		return p.SendError(ctx, oprot, frugal.APPLICATION_EXCEPTION_INTERNAL_ERROR, "basePing", "Internal error processing basePing: "+err.Error())
	}
	return p.SendReply(ctx, oprot, "basePing", &result)
}

type BaseFooBasePingArgs struct {
}

func NewBaseFooBasePingArgs() *BaseFooBasePingArgs {
	return &BaseFooBasePingArgs{}
}

func (p *BaseFooBasePingArgs) Read(ctx context.Context, iprot thrift.TProtocol) error {
	if _, err := iprot.ReadStructBegin(ctx); err != nil {
		return thrift.PrependError(fmt.Sprintf("%T read error: ", p), err)
	}

	for {
		_, fieldTypeId, fieldId, err := iprot.ReadFieldBegin(ctx)
		if err != nil {
			return thrift.PrependError(fmt.Sprintf("%T field %d read error: ", p, fieldId), err)
		}
		if fieldTypeId == thrift.STOP {
			break
		}
		if err := iprot.Skip(ctx, fieldTypeId); err != nil {
			return err
		}
		if err := iprot.ReadFieldEnd(ctx); err != nil {
			return err
		}
	}
	if err := iprot.ReadStructEnd(ctx); err != nil {
		return thrift.PrependError(fmt.Sprintf("%T read struct end error: ", p), err)
	}
	return nil
}

func (p *BaseFooBasePingArgs) Write(ctx context.Context, oprot thrift.TProtocol) error {
	if err := oprot.WriteStructBegin(ctx, "basePing_args"); err != nil {
		return thrift.PrependError(fmt.Sprintf("%T write struct begin error: ", p), err)
	}
	if err := oprot.WriteFieldStop(ctx); err != nil {
		return thrift.PrependError("write field stop error: ", err)
	}
	if err := oprot.WriteStructEnd(ctx); err != nil {
		return thrift.PrependError("write struct stop error: ", err)
	}
	return nil
}

func (p *BaseFooBasePingArgs) String() string {
	if p == nil {
		return "<nil>"
	}
	return fmt.Sprintf("BaseFooBasePingArgs(%+v)", *p)
}

type BaseFooBasePingResult struct {
}

func NewBaseFooBasePingResult() *BaseFooBasePingResult {
	return &BaseFooBasePingResult{}
}

func (p *BaseFooBasePingResult) Read(ctx context.Context, iprot thrift.TProtocol) error {
	if _, err := iprot.ReadStructBegin(ctx); err != nil {
		return thrift.PrependError(fmt.Sprintf("%T read error: ", p), err)
	}

	for {
		_, fieldTypeId, fieldId, err := iprot.ReadFieldBegin(ctx)
		if err != nil {
			return thrift.PrependError(fmt.Sprintf("%T field %d read error: ", p, fieldId), err)
		}
		if fieldTypeId == thrift.STOP {
			break
		}
		if err := iprot.Skip(ctx, fieldTypeId); err != nil {
			return err
		}
		if err := iprot.ReadFieldEnd(ctx); err != nil {
			return err
		}
	}
	if err := iprot.ReadStructEnd(ctx); err != nil {
		return thrift.PrependError(fmt.Sprintf("%T read struct end error: ", p), err)
	}
	return nil
}

func (p *BaseFooBasePingResult) Write(ctx context.Context, oprot thrift.TProtocol) error {
	if err := oprot.WriteStructBegin(ctx, "basePing_result"); err != nil {
		return thrift.PrependError(fmt.Sprintf("%T write struct begin error: ", p), err)
	}
	if err := oprot.WriteFieldStop(ctx); err != nil {
		return thrift.PrependError("write field stop error: ", err)
	}
	if err := oprot.WriteStructEnd(ctx); err != nil {
		return thrift.PrependError("write struct stop error: ", err)
	}
	return nil
}

func (p *BaseFooBasePingResult) String() string {
	if p == nil {
		return "<nil>"
	}
	return fmt.Sprintf("BaseFooBasePingResult(%+v)", *p)
}
